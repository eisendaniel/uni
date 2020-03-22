import numpy as np
import matplotlib.pyplot as plt
import scipy.stats as stats

M = 5
N = 10000

var = 16
std = 4
mean = 2.5

sample = mean + std * (np.random.randn(M, N))
sample_std = np.std(sample)

student_t = []

for i in range(N):
    t = (np.mean(np.transpose(sample)[i]) - mean) / sample_std * np.sqrt(M)
    student_t += [t]

hist, bins = np.histogram(student_t, bins=50, range=[-10, 10])
bin_w = bins[1] - bins[0]
hist_norm = hist / N
hist_plt = hist_norm / bin_w

plt.subplot(121)
plt.bar(bins[:-1], hist_plt, width=0.4, edgecolor="black")

x = np.linspace(bins[0], bins[-1], 1000) - bin_w / 2
plt.plot(x, stats.t.pdf(x + bin_w / 2, M), 'r')
plt.ylabel("Probability Density(t)")
plt.xlabel("t")
plt.legend(["PDF", "Student t Histogram"])

plt.subplot(122)
plt.plot(bins[1:], np.cumsum(hist_norm))
plt.plot(x, stats.t.cdf(x + bin_w / 2, M))
plt.ylabel("Probability that T < t")
plt.xlabel("t")
plt.legend(["Sample CDF", "Population CDF"])

plt.show()
