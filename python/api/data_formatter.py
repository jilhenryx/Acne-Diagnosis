import numpy as np
from io import BytesIO
from PIL import Image
import constants as Constants
"""
    Formats prediction data retrieved from ViT model

    Params:
        prediction: tensor from ViT Model containing predicted values

    Return:
        Tuple of the predicted class code of class with highest probability
        and the confidence list of each class
"""


def format_prediction_result(prediction):
    pred_class_code = Constants.CLASS_NAMES_CODE[np.argmax(prediction)]
    confidence_list = np.round(prediction, 2)

    return pred_class_code, confidence_list


"""
    Formats data to be sent to client

    Params:
        status:
        result_type:
        pred_class:
        confidence:

    Return:
        Dictionary containing result of predictions
"""


def format_result(status, result_type, pred_class='', confidence=''):
    result = Constants.RESULT_TYPE[result_type]
    return {
        'status': status,
        'result': result,
        'class': pred_class,
        'confidence': confidence
    }


def read_files_as_image_array(files):
    images = []
    if(len(files) < 1):
        return
    for file in files:
        image = np.array(Image.open(BytesIO(file)))
        #image_batch = np.expand_dims(image, 0)
        images.append(image)
    return np.array(images)
