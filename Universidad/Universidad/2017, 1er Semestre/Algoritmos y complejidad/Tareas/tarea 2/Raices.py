from mpmath import *
from sympy import *

x = Symbol('x')
mp.dps = 5

v5 = x**5 + 0.929788035150459*x**4 - 16.4514031542289*x**3 + 23.7062456551184*x**2 - 10.8480012583941*x + 1.36367833614103

raices = solve(v5, x)
print N(raices[0],5)
print N(raices[1],5)
print N(raices[2],5)
print N(raices[3],5)
print N(raices[4],5)
