import os

dir_list = max([int(i) for i in os.listdir("../saved_models") + [0]])
print(dir_list)