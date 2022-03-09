from tensorflow import keras
import numpy as np

IMG_SIZE = 224
DATA_AUG = keras.Sequential([
        keras.layers.experimental.preprocessing.Resizing(IMG_SIZE, IMG_SIZE),
        keras.layers.experimental.preprocessing.Rescaling(1.0/255)
    ],
        name="Resize_Rescale"
    )


def resize_rescale(images):
    aug_images = []
    for image in images:
        aug_image = DATA_AUG(image)
        aug_images.append(aug_image)
    return np.array(aug_images)
