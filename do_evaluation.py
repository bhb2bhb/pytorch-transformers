import time
import numpy as np

while True:
    time.sleep(10)
    for i in range(256 * 4):
        a = np.ones(shape=(1024, 1024))
        b = np.ones(shape=(1024, 1024))
        c = a * b
