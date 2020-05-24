import numpy as np
import matplotlib.pyplot as plt
import scipy.stats


mu = 10
sigma = 2
var = 4

ten = mu + sigma * (np.random.randn(10, 1000))
tenThousand = mu + sigma * (np.random.randn(10000, 1000))

ten_mean = np.mean(ten, axis=0)
tenThousand_mean = np.mean(tenThousand, axis=0)

ten_var = np.var(ten, axis=0)
tenThousand_var = np.var(tenThousand, axis=0)

index = np.linspace(1, 1000, 1000)
plt.figure(1)

ax1 = plt.subplot(2, 2, 1)
plt.scatter(index, ten_mean, marker=".")
plt.title("Mean - 10")

ax2 = plt.subplot(2, 2, 2)
plt.scatter(index, tenThousand_mean, marker=".")
plt.title("Mean - 10,000")

ax3 = plt.subplot(2, 2, 3)
plt.scatter(index, ten_var, marker=".")
plt.title("Var - 10")

ax4 = plt.subplot(2, 2, 4)
plt.scatter(index, tenThousand_var, marker=".")
plt.title("Var - 10,000")
plt.show()

plt.figure(2)

ax1 = plt.subplot(2, 2, 1)
plt.hist(ten_mean, bins=50, edgecolor="black")
plt.title("Mean - 10")

ax2 = plt.subplot(2, 2, 2)
plt.hist(tenThousand_mean, bins=50, edgecolor="black")
plt.title("Mean - 10,000")

ax3 = plt.subplot(2, 2, 3)
plt.hist(ten_var, bins=50, edgecolor="black")
plt.title("Var - 10")

ax4 = plt.subplot(2, 2, 4)
plt.hist(tenThousand_var, bins=50, edgecolor="black")
plt.title("Var - 10,000")
plt.show()
