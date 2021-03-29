import numpy as np
from numpy.core.function_base import linspace
from scipy.integrate import cumulative_trapezoid, dblquad, tplquad, quad
import matplotlib.pyplot as plt
from scipy.interpolate import UnivariateSpline
from mpl_toolkits.mplot3d import Axes3D


def q4ai():
    s = linspace(0.0, 10.0, 1000)

    def f(u): return np.cos(np.pi*np.sin(np.log(1.0+u**2)))
    def g(u): return np.sin(np.pi*np.sin(np.log(1.0+u**2)))
    x = cumulative_trapezoid(f(s), s, initial=0)
    y = cumulative_trapezoid(g(s), s, initial=0)

    print(f"(x(10), y(10)) = ({x[-1]}, {y[-1]})")

    plt.plot(x, y)
    plt.grid()
    plt.gca().set_aspect(1.0)
    plt.show()


def q4aii():
    s = linspace(0.0, 10.0, 1000)
    def theta(s): return np.pi*np.sin(np.log(1.0+s**2))
    s_0 = 5

    for h in [1e-4, 1e-3, 3e-3, 5e-3, 10e-3]:
        theta_prime = (theta(s_0+h)-theta(s_0-h))/(2*h)  # 2nd estimation

        print(f"h={h}: K(s=5) = {np.abs(theta_prime)}")


def q4bi():
    ti = [0.0, 0.6, 1.1, 1.5, 1.8, 2.1, 2.3, 2.5, 2.8, 3.2]
    xi = [0.0, -0.44, -0.69, -0.63, -0.62, -0.55, -0.63, -0.67, -0.44, -0.10]
    yi = [0.0, -0.15, -0.41, -0.15, -0.11, -0.31, -0.20, -0.15, -0.23, -0.21]
    zi = [0.0, 0.36, 0.11, 0.09, 0.16, 0.06, -0.04, 0.12, 0.01, 0.05]

    f = UnivariateSpline(ti, xi, s=0)
    g = UnivariateSpline(ti, yi, s=0)
    h = UnivariateSpline(ti, zi, s=0)
    t = np.linspace(ti[0], ti[-1], 200)

    print(f"t = 2: (x,y,z) = ({f(2)}, {g(2)}, {h(2)})")

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.plot(f(t), g(t), h(t))
    ax.plot(f(2), g(2), h(2), 'o')
    ax.plot(xi, yi, zi, 'o')
    plt.show()


def q4bii():
    ti = [0.0, 0.6, 1.1, 1.5, 1.8, 2.1, 2.3, 2.5, 2.8, 3.2]
    xi = [0.0, -0.44, -0.69, -0.63, -0.62, -0.55, -0.63, -0.67, -0.44, -0.10]
    yi = [0.0, -0.15, -0.41, -0.15, -0.11, -0.31, -0.20, -0.15, -0.23, -0.21]
    zi = [0.0, 0.36, 0.11, 0.09, 0.16, 0.06, -0.04, 0.12, 0.01, 0.05]

    f = UnivariateSpline(ti, xi, s=0)
    g = UnivariateSpline(ti, yi, s=0)
    h = UnivariateSpline(ti, zi, s=0)

    t = np.linspace(ti[0], ti[-1], 200)

    def r(t): return np.array([f(t), g(t), h(t)]).T
    dfdt = f.derivative()
    dgdt = g.derivative()
    dhdt = h.derivative()
    def v(t): return np.array([dfdt(t), dgdt(t), dhdt(t)]).T
    d2fdt2 = dfdt.derivative()
    d2gdt2 = dgdt.derivative()
    d2hdt2 = dhdt.derivative()
    def a(t): return np.array([d2fdt2(t), d2gdt2(t), d2hdt2(t)]).T

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    rk = r(2)
    vk = v(2)
    ak = a(2)
    Tk = vk/np.linalg.norm(vk)
    Nk = ak*np.dot(vk, vk)-vk*np.dot(ak, vk)
    Nk /= np.linalg.norm(Nk)
    Bk = np.cross(Tk, Nk)
    ax.plot([rk[0], rk[0]+Tk[0]], [rk[1], rk[1]+Tk[1]],
            [rk[2], rk[2]+Tk[2]], 'k-')  # plot a unit tangent
    ax.plot([rk[0], rk[0]+Nk[0]], [rk[1], rk[1]+Nk[1]],
            [rk[2], rk[2]+Nk[2]], 'r-')  # plot the principal unit normal
    ax.plot([rk[0], rk[0]+Bk[0]], [rk[1], rk[1]+Bk[1]],
            [rk[2], rk[2]+Bk[2]], 'g-')  # plot the binormal
    ax.plot(f(t), g(t), h(t))  # plot the smooth curve
    plt.show()


def q4ci():
    def f(y, x): return np.cos(x)*np.exp(y)
    def g1(x): return x**2
    def g2(x): return 10+np.sin(x)

    du_int = dblquad(f, -3, 3, g1, g2)
    print(f"result: {du_int[0]}, error: {du_int[1]}")


def q4cii():
    def f(x, y, z): return (4 / (1 + x**2 + y**2 + z**2))

    def F(r, t, p):
        x = r*np.cos(t)*np.sin(p)
        y = r*np.sin(t)*np.sin(p)
        z = r*np.cos(p)
        return f(x, y, z)*r**2*np.sin(p)

    tri_int = tplquad(F, 0, np.pi, 0, 2*np.pi, 0, 1)
    print(f"result: {tri_int[0]}, error: {tri_int[1]}")
