import numpy as np
import matplotlib.pyplot as plt
import scipy.stats

with open('../321_lab3/Speech.pcm', 'rb') as f:
    buf = f.read()
    data = np.frombuffer(buf, dtype='int16')

plt.plot(data)
sample_var = np.var(data)
alpha_approx = np.sqrt((2 * sample_var))

