from mpmath import *
from sympy import *

x = Symbol('x')
mp.dps = 5

def proyeccion(u,v):
    return (float(integrate(sin(x)*u*v,(x,0,1)))/float(integrate(sin(x)*v*v,(x,0,1)))*v)
v0 = 1
print v0

v1 = x - proyeccion(x,v0)
print v1

v2 = x**2 - proyeccion(x**2,v0) - proyeccion (x**2,v1)
print v2

v3 = x**3 - proyeccion(x**3,v0) - proyeccion (x**3,v1) - proyeccion (x**3,v2)
print v3

v4 = x**4 - proyeccion(x**4,v0) - proyeccion (x**4,v1) - proyeccion (x**4,v2) - proyeccion (x**4,v3)
print v4

v5 = x**5 - proyeccion(x**5,v0) - proyeccion (x**5,v1) - proyeccion (x**5,v2) - proyeccion (x**5,v3) - proyeccion (x**5,v4)
print v5
