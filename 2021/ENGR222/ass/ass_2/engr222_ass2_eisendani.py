import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import quad


def q4ai():
    f = lambda x:np.exp(np.cos(np.pi*x**2))
    x_0 = 1/(np.sqrt(2))
    h = 0.1**np.linspace(0, 21, 100)          
    dfdx = (f(x_0+h)-f(x_0))/h #1st estimation
    
    error = np.abs(dfdx-(-np.sqrt(2)*np.pi))

    print(f'Min e of {np.min(error)} at h = {h[np.argmin(error)]}')
    plt.loglog(h,error)
    plt.gca().invert_xaxis()
    plt.xlabel('h')
    plt.ylabel('error')
    plt.grid()
    plt.show()


def q4aii():
    f = lambda x:np.exp(np.cos(np.pi*x**2))
    x_0 = 1/(np.sqrt(2))
    h = 0.1**np.linspace(0, 21, 100)              
    dfdx = (f(x_0+h)-f(x_0-h))/(2*h) #2nd estimation

    error = np.abs(dfdx-(-np.sqrt(2)*np.pi))

    print(f'Min e of {np.min(error)} at h = {h[np.argmin(error)]}')
    plt.loglog(h,error)
    plt.gca().invert_xaxis() 
    plt.xlabel('h')
    plt.ylabel('error')
    plt.grid()
    plt.show()  

def q4aiii():
    f = lambda x:np.exp(np.cos(np.pi*x**2))
    x_0 = 1/(np.sqrt(2))
    h = 0.1**np.linspace(0, 21, 100) 

    d2fdx2 = (f(x_0+h)-2*f(x_0)+f(x_0-h))/(h**2) 
    
    error = np.abs(d2fdx2-(2*np.pi*(np.pi-1)))

    print(f'Min e of {np.min(error)} at h = {h[np.argmin(error)]}')
    plt.loglog(h,error)
    plt.gca().invert_xaxis()
    plt.xlabel('h')
    plt.ylabel('error')
    plt.grid()
    plt.show()

def q4bi():
    a = 0
    b = 10
    subs = [10,20,40,80,160,320,640]
    traps = []
    for n in subs:
        f = lambda x:x*np.exp(-np.sqrt(x))
        x = np.linspace(a,b,n+1)
        h = (b-a)/n
        y = f(x)
        trapezoidal_rule = (y[1:]+y[:-1]).sum()*h/2
        traps += [trapezoidal_rule]
        print(f"For a subinterval of {n}, intergral is {trapezoidal_rule}")
    plt.plot(traps)
    plt.plot(np.ones(len(traps))*4.669)
    plt.show()

def q4bii():
    a = 0
    b = 10
    subs = [10,20,40,80,160]
    simps = []
    for n in subs:
        f = lambda x:x*np.exp(-np.sqrt(x))
        x = np.linspace(a,b,n+1)
        h = (b-a)/n
        y = f(x)
        simpsons_rule = h/3*(y[0]+y[-1])+4*h/3*y[1::2].sum()+2*h/3*y[2:-1:2].sum()
        simps += [simpsons_rule]
        print(f"For a subinterval of {n}, intergral is {simpsons_rule}")
    plt.plot(simps)
    plt.plot(np.ones(len(simps))*4.669)
    plt.show()

def q4biii():
    f = lambda x:x*np.exp(-np.sqrt(x))
    upper_lims = [10,100,1000]
    ints = []
    for b in upper_lims:
        result = quad(f,0.0,b)
        print(f'output at upperlimit: {b} = {result[0]}')

    result = quad(f,0.0,np.inf)
    print(f"To positive infinity: {result[0]}")

    



