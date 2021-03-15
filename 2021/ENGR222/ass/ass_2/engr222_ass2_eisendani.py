import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib as mpl
from matplotlib import cm
from matplotlib.ticker import LinearLocator


def para3d():
    fig = plt.figure()
    ax = fig.gca(projection='3d')

    t = np.linspace(0,2*np.pi,10000)
    x = np.sin(1*t)
    y = np.sin(0.5*t)
    z = np.cos(3*t)
    ax.plot(x,y,z)
    plt.show()

def surf():
    fig, ax = plt.subplots(subplot_kw={"projection": "3d"})

    # Make data.
    x = np.arange(-8, 8, 0.1)
    y = np.arange(-8, 8, 0.1)
    x, y = np.meshgrid(x, y)
    z = -2*x**3 + 3*(x**2)*y + 2*y**3 - 9*y + 5

    # Plot the surface.
    surf = ax.plot_surface(x, y, z, cmap=cm.coolwarm,linewidth=0, antialiased=False)

    # Customize the z axis.
    # ax.set_zlim(-1.01, 1.01)
    ax.zaxis.set_major_locator(LinearLocator(10))
    # A StrMethodFormatter is used automatically
    ax.zaxis.set_major_formatter('{x:.02f}')

    # Add a color bar which maps values to colors.
    fig.colorbar(surf, shrink=0.5, aspect=5)

    plt.show()

surf()