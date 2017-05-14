from mpmath import *
from sympy import *

x = Symbol('x')
mp.dps = 5

x0 = -5.1250
x1 = 0.20386
x2 = 0.57435
x3 = 0.90453
x4 = 2.5124

def calc_coef(lista, raiz):
    prod = 1
    for num in lista:
        if num != raiz:
            prod = prod*(x-num)/(raiz-num)
    return N(integrate(sin(x)*prod, (x,0,1)),5)

lista = [x0,x1,x2,x3,x4]

print calc_coef(lista, x0)
print calc_coef(lista, x1)
print calc_coef(lista, x2)
print calc_coef(lista, x3)
print calc_coef(lista, x4)
