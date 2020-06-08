import numpy as np
import matplotlib.pyplot as plt
from scipy.special import factorial
from scipy.stats import chi2

Lambda = 3  # arrival rate
M = 100  # N of arrivals
N = 10000  # N of experiments
t = 5  # upper bounds of time interval
max_k = (2 * Lambda * t)  # upper possible k values

# Generate exp distributed inter-arrival times of events from uniform dist
inter_arrival_times = -np.log(np.random.rand(N, M)) / Lambda
# cumulatively sum to get vectors of arrival times
arrival_times = np.cumsum(inter_arrival_times, axis=1)
# Count the number of arrivals with a specified time range [0,t] <- is Poisson
observed = np.sum(arrival_times <= t, axis=1)

# vector of possible K values
K = np.linspace(0, max_k, max_k)
# theoretical arrival count distribution
expected = N * ((np.exp(-Lambda * t) * np.power(Lambda * t, K)) / factorial(K))

#  Comparision between Observed and Expected arrivals
plt.figure()
#  plot and retrieve histogram bins of observed
observed, _, _ = plt.hist(observed, bins=np.linspace(0, max_k, max_k + 1) - 0.5, edgecolor="black")
plt.plot(K, expected)
plt.title("$E_k$ $vs$ $O_k$ for {} realisations".format(N))
plt.xlabel("$k$")
plt.ylabel("$frequency$")
plt.show()

# Correct expected outer values to be >= 5, (and match transform to observed)
for k in range(expected.size):
    if expected[k] >= 5:
        expected[k] = np.sum(expected[:k + 1])
        observed[k] = np.sum(observed[:k + 1])
        expected = expected[k:]
        observed = observed[k:]
        break
for k in reversed(range(expected.size)):
    if expected[k] >= 5:
        expected[k] = np.sum(expected[k:])
        observed[k] = np.sum(observed[k:])
        expected = expected[:k + 1]
        observed = observed[:k + 1]
        break

chi2_stat = np.sum(np.power((observed - expected), 2) / expected)
critical = chi2.cdf(chi2_stat, max_k - 1)
print("test statistic: {}"
      "\ncritical-value: {}"
      "\n       p-value: {}"
      .format(chi2_stat, critical, 1 - critical))
