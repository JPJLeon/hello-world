from mpmath import *
from sympy import *

x = Symbol('x')
mp.dps = 5
v0 = 1
v1 = x - 0.655145072042431
v2 = x**2 - 1.18917305712215*x + 0.293448074424324
v3 = x**3 - 1.71921313411817*x**2 + 0.863611436538037*x - 0.116134582638238
v4 = x**4 - 1.81347268378876*x**3 + 0.981521240629454*x**2 - 0.144156902202725*x - 0.00258942792514649
v5 = x**5 + 0.929788035150459*x**4 - 16.4514031542289*x**3 + 23.7062456551184*x**2 - 10.8480012583941*x + 1.36367833614103

def integral(u,v):
    return float(integrate(sin(x)*u*v,(x,0,1)))

#combinaciones v0
print integral(v0,v1)
print integral(v0,v2)
print integral(v0,v3)
print integral(v0,v4)
print integral(v0,v5)
        
#combinaciones v1
print integral(v1,v2)
print integral(v1,v3)
print integral(v1,v4)
print integral(v1,v5)

#combinaciones v2
print integral(v2,v3)
print integral(v2,v4)
print integral(v2,v5)

#combinaciones v3
print integral(v3,v4)
print integral(v3,v5)

#ultima combinacion
print integral(v4,v5)
