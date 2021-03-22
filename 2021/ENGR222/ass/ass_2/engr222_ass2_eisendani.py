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

def surf(x,y,z,title):
    fig, ax = plt.subplots(subplot_kw={"projection": "3d"})
    plt.title(f"{title}")
   
    # Plot the surface.
    surf = ax.plot_surface(x, y, z, cmap=cm.plasma,linewidth=0, antialiased=False)

    # Customize the z axis.
    # ax.set_zlim(-1.01, 1.01)
    ax.zaxis.set_major_locator(LinearLocator(10))
    # A StrMethodFormatter is used automatically
    ax.zaxis.set_major_formatter('{x:.02f}')

    # Add a color bar which maps values to colors.
    fig.colorbar(surf, shrink=0.5, aspect=5)

    



# Make data.
x = np.arange(-5, 5, 0.1)
y = np.arange(-5, 5, 0.1)
x, y = np.meshgrid(x, y)
z = (9-x**2)**(1/2) 
surf(x,y,z,"")
plt.show()