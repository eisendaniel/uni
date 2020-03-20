import numpy as np
import matplotlib.pyplot as plt
from scipy.special import erf



def pdf(mu, sig, x):
    return (1 / (np.sqrt(2 * np.pi * sig ** 2))) * np.exp(-((x - mu) ** 2) / (2 * sig ** 2))

mean = 2.5
var = 16
std = 4

sample = mean + std * (np.random.randn(1000))  # such that the Guassian Distribution is the population

sample_mean = np.mean(sample)
sample_var = np.var(sample)
sample_std = np.std(sample)

print("Mean: {}\nVar: {}\nStd: {}".format(sample_mean, sample_var, sample_std))

hist, bins = list(np.histogram(sample, 30))
binw = bins[1] - bins[0]
hist_scaled = hist / 1000
hist_pd = hist_scaled / binw

x = np.linspace(bins[0], bins[-1], 1000) - binw / 2

cdf_pop = (1 / 2) * (1 + erf((x - 2.5) / (4 * np.sqrt(2))))
cdf_samp = (1 / 2) * (1 + erf((x - sample_mean) / (sample_std * np.sqrt(2))))

plt.subplot(121)
plt.bar(bins[:-1], hist_pd, width=0.7)
plt.plot(x, pdf(2.5, 4, x), 'r')
plt.plot(x, pdf(sample_mean, sample_std, x), 'g')
plt.subplot(122)
plt.plot(x, cdf_pop, 'r')
plt.plot(x, cdf_samp, 'g')
plt.show()