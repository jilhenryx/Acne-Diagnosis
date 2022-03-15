import os

CLASS_NAMES_CODE = [0, 1]
CLASS_NAMES = ['acne', 'not-acne']
RESULT_TYPE = ['Inconclusive', 'Conclusive']

RESULT_TYPE_INCONC = 0
RESULT_TYPE_CONC = 1

MODEL_FILEPATH = "..\saved_models"
MODEL_VERSION = max([int(i)
                     for i in os.listdir(MODEL_FILEPATH) + [0]])
MODEL_ABS_PATH = f"{MODEL_FILEPATH}\{MODEL_VERSION}"

ORIGINS = [
    "http://localhost",
    "http://localhost:3000",
]
