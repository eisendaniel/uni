import numpy as np
import matplotlib.pyplot as plt
from scipy.special import erf
import scipy.stats as stats

M = 5
N = 10000

var = 16
std = 4
mean = 2.5

sample = mean + std * (np.random.randn(M, N))
sample_std = np.std(sample)

t_values = []

for i in range(N):
    t = (np.mean(np.transpose(sample)[i]) - mean) / sample_std * np.sqrt(M)
    t_values += [t]

hist, bins = np.histogram(t_values, bins=50, range=[-10, 10])
binw = bins[1] - bins[0]
hist_norm = hist / N
hist_plt = hist_norm / binw

plt.subplot(121)
plt.bar(bins[:-1], hist_plt, width=0.7)

x = np.linspace(bins[0], bins[-1], 1000) - binw / 2
plt.plot(x, stats.t.pdf(x+binw/2, M), 'r')

plt.subplot(122)
plt.plot(bins[1:], np.cumsum(hist_norm))
plt.plot(x, stats.t.cdf(x+binw/2, M))

plt.show()
