from fastapi import FastAPI, UploadFile
from typing import List
from fastapi.middleware.cors import CORSMiddleware
import tensorflow as tf
import uvicorn
import numpy as np
from data_preprocessing import resize_rescale
import constants as Constants
import data_formatter as df

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=Constants.ORIGINS,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)

MODEL = tf.keras.models.load_model(Constants.MODEL_ABS_PATH)


@app.get("/")
async def home():
    return "Welcome to Jil's Acne Server"


@app.get("/ping")
async def ping():
    return "You made it"


@app.post("/predict")
async def predict(
        files: List[UploadFile]
):
    #return {"File Names": [file.filename for file in files]}
    files = [await file.read() for file in files]
    images_array = df.read_files_as_image_array(files)
    images_batch = resize_rescale(images_array)
    #return {"image_batch": images_batch[0].shape}

    model_predictions = MODEL.predict(images_batch)
    predictions = np.round_(model_predictions,2)
    num_predictions = len(predictions)
    #return {'preds':predictions.tolist()}
    if num_predictions < 1:
        return df.format_result(
            status='No Prediction',
            result_type=Constants.RESULT_TYPE_CONC
        )

    pred_classes_code = np.array([], dtype='int64')
    confidence_list_total = np.zeros_like(predictions[0])

    if num_predictions == 1:
        #return{"prediction":str(predictions)}
        pred_class_code, confidence_list = df.format_prediction_result(
            predictions[0])
        return df.format_result(
            status='OK',
            result_type=Constants.RESULT_TYPE_CONC,
            pred_class=Constants.CLASS_NAMES[pred_class_code],
            confidence= np.round(confidence_list.tolist()[pred_class_code],2)
        )
    elif num_predictions > 1:
        for prediction in predictions:
            pred_class_code, confidence_list = df.format_prediction_result(
                prediction)
            pred_classes_code = np.append(pred_classes_code, pred_class_code)
            confidence_list_total += confidence_list

        # Getting Number of  Most Occurring Class
        pred_classes_code_mode = np.bincount(pred_classes_code)
        max_num = np.max(pred_classes_code_mode)
        pred_classes_code_mode_num = [x for x in pred_classes_code_mode if x == max_num]
        # Return Results
        if len(pred_classes_code_mode_num) > 1:
            print(confidence_list_total)
            return df.format_result(
                status='Inconclusive',
                result_type=Constants.RESULT_TYPE_INCONC
            )
        else:
            index = pred_classes_code_mode.argmax()
            confidence = np.round(((confidence_list_total[index] / num_predictions) * 100),2)
            pred_class = Constants.CLASS_NAMES[index]
            return df.format_result(
                status='OK',
                result_type=Constants.RESULT_TYPE_CONC,
                pred_class=pred_class,
                confidence=confidence
            )


if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8000)
