import numpy as np
import matplotlib.pyplot as plt
from scipy.special import gammaln, gamma

with open('../321_lab3/Speech.pcm', 'rb') as f:
    buf = f.read()
    data = np.frombuffer(buf, dtype='int16')

data = data.astype("int64")
plt.figure()
plt.plot(data)
N = data.size
sample_var = np.var(data)
mu = 0

alpha = np.sqrt((2 * sample_var))
beta = 2  # init beta


max_L = N * (np.log(beta) - np.log(2 * alpha) - gammaln(1 / beta)) - np.sum(
    np.power((np.abs(data) / alpha), beta))  # first result
opt_alpha = alpha
opt_beta = beta  # init max
prev_opt_beta = opt_beta
prev_opt_alpha = opt_alpha
l = []

while False:
    for beta in np.linspace(0.01, beta+1, 1000):
        beta_r = N * (np.log(beta) - np.log(2 * alpha) - gammaln(1 / beta)) - np.sum(np.power((np.abs(data) / alpha), beta))
        if beta_r > max_L:
            max_L = beta_r
            opt_beta = beta
    beta = opt_beta
    for alpha in np.linspace(alpha - 100, alpha + 100, 1000):
        alpha_r = N * (np.log(beta) - np.log(2 * alpha) - gammaln(1 / beta)) - np.sum(np.power((np.abs(data) / alpha), beta))
        if alpha_r > max_L:
            max_L = alpha_r
            opt_alpha = alpha
    l += [max_L]
    if prev_opt_alpha == opt_alpha:
        alpha = opt_alpha
        beta = opt_beta
        break
    alpha = opt_alpha
    beta = opt_beta
    prev_opt_alpha = opt_alpha
    print(opt_beta)
    print(opt_alpha)

plt.figure()
plt.title("L Maximisation")
plt.plot(np.array(l))
print(beta)
print(alpha)

plt.figure()
x = np.linspace(np.min(data), np.max(data), data.size)
pdf = (beta / (2 * alpha * gamma(1 / beta))) * np.exp(-1 * np.power(np.abs(x) / alpha, beta))
plt.hist(data, bins=50, edgecolor="black", density=True)
plt.plot(x, pdf)
plt.title("Data density vs estimated PDF")
