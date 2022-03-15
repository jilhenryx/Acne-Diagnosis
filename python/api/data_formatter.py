import numpy as np
import tensorflow as tf
from io import BytesIO
from PIL import Image
import constants as Constants

IMG_SIZE = 224
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
    confidence_list = np.round_(prediction, 2)

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


def format_result(status, result_type, pred_class='', confidence=0.0):
    result = Constants.RESULT_TYPE[result_type]
    return {
        'status': status,
        'resultType': result,
        'predClass': pred_class,
        'confidence': confidence
    }


def read_files_as_image_array(files):
    images_array = []
    if(len(files) < 1):
        return
    for file in files:
        image = Image.open(BytesIO(file))
        image = image.resize((IMG_SIZE,IMG_SIZE))
        image_array = tf.keras.preprocessing.image.img_to_array(image)
        image_array = tf.expand_dims(image_array, 0).numpy()
#       image_array = resize_rescale(image_array)
#       print(f"Image_Array: {image_array.shape}")
        images_array.append(image_array[0])

    return np.array(images_array,dtype=np.float)
    
