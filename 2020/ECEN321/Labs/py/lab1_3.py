import numpy as np
import matplotlib.pyplot as plt
import scipy.stats as stats

M = 5
N = 10000

var = 16
std = 4
mean = 2.5

sample = mean + std * (np.random.randn(M, N))

chi_squared = []
for i in range(N):
    val = np.var(np.transpose(sample)[i]) * ((M - 1) / var)
    chi_squared += [val]

hist, bins = np.histogram(chi_squared, bins=100)
bin_w = bins[1] - bins[0]
hist_norm = hist / N
hist_plt = hist_norm / bin_w

x = np.linspace(bins[0], bins[-1], 1000) - bin_w / 2

plt.bar(bins[:-1], hist_plt, width=0.2, edgecolor="black")
plt.plot(x, stats.chi2.pdf(x + bin_w / 2, M), 'r')
plt.ylabel("Probability Density(x^2)")
plt.xlabel("x^2")

plt.show()
