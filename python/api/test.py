import numpy as np
import os
import tensorflow as tf
from data_preprocessing import resize_rescale
import constants as Constants
import data_formatter as df

BATCH_SIZE = 32
IMG_SIZE = 224
MODEL = tf.keras.models.load_model(Constants.MODEL_ABS_PATH)
PARENT_FILE_PATH = '../dataset/test/acne/'
files = os.listdir(PARENT_FILE_PATH)
images_array = []
for file in files:
    pil_image = images = tf.keras.utils.load_img(PARENT_FILE_PATH + file)
    image_array = tf.keras.preprocessing.image.img_to_array(pil_image).tolist()
    images_array.append(image_array)
imgs_np_arr = np.array(images_array)
images_batch = resize_rescale(imgs_np_arr)
print(images_batch.shape)
# predictions = MODEL.predict(images_batch)
# print(np.round_(predictions,2))