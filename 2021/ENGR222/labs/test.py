import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib as mpl

fig = plt.figure()
ax = fig.gca(projection='3d')

t = np.linspace(0,2*np.pi,10000)
x = np.sin(1*t)
y = np.sin(0.5*t)
z = np.cos(3*t)
ax.plot(x,y,z)
plt.show()
