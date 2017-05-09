
print "Bienvenido"
exec "f = lambda x: " + raw_input("ingrese su funcion f(x)= ") #ej: x+x**2
string = raw_input("igrese puntos: ") #ej: 1 2 3
puntos = string.split()

######construccio del polinomio ######
print "Construyendo polinomio interpolador"
for i in range(len(puntos)):
    puntos[i] = float(puntos[i])
polinomio = "0"
for i in range(len(puntos)):
    multiplicador = "f(" + str(puntos[i]) + ")"
    for j in range(len(puntos)):
        if i != j:
            multiplicador = multiplicador + "*(x - " + str(puntos[j]) + ")/(" + str(puntos[i]) + " - " + str(puntos[j]) + ")"
    polinomio = polinomio + " + " + multiplicador
print polinomio
exec "p = lambda x: " + polinomio
print "Polinomio p(x) construido" # llamarlo como p(x)
######################################

def error_Rectangulos(a, b, h): # intervalo [a,b], longitud h
    contador = 0
    area_original = 0
    area_aproximacion = 0
    largo = h
    fin = 0
    
    while fin <= b:
        inicio = a + contador*largo
        fin = inicio + largo
        punto_medio = (fin + inicio)/2.0
        area_original += (f(punto_medio)*largo)
        area_aproximacion += (p(punto_medio)*largo)
        contador +=1
        
    return area_original - area_aproximacion

#######################################

def error_Cuadratura(a, b): # intervalo [a,b], tres puntos
    x_0 = -(3/5.0)**0.5
    x_1 = 0
    x_2 = (3/5.0)**0.5
    a_0 = 5/9.0
    a_1 = 8/9.0
    a_2 = 5/9.0
    lista_x = [x_0, x_1, x_2]
    lista_a = [a_0, a_1, a_2]
    sum_o = 0
    sum_a = 0
    
    #cambio de [a,b] a [-1,1]
    camb1 = (b-a)/2.0
    camb2 = (b+a)/2.0

    for i in range(3):
        sum_o += lista_a[i]*f(camb1*lista_x[i]+camb2)
        sum_a += lista_a[i]*p(camb1*lista_x[i]+camb2)
    return camb1*(sum_o - sum_a)
    
#######################################

def aprox_int_Rectangulos(a,b,h): #para calcular el valor de la integral de f(x)
    contador = 0
    area_original = 0
    area_aproximacion = 0
    largo = h
    fin = 0
    
    while fin <= b:
        inicio = a + contador*largo
        fin = inicio + largo
        punto_medio = (fin + inicio)/2.0
        area_original += (f(punto_medio)*largo)
        contador +=1
        
    return area_original
########################################

def aprox_int_Cuadratura(a,b): #para calcular el valor de la integral f(x)
    x_0 = -(3/5.0)**0.5
    x_1 = 0
    x_2 = (3/5.0)**0.5
    a_0 = 5/9.0
    a_1 = 8/9.0
    a_2 = 5/9.0
    lista_x = [x_0, x_1, x_2]
    lista_a = [a_0, a_1, a_2]
    sum_o = 0
    
    #cambio de [a,b] a [-1,1]
    camb1 = (b-a)/2.0
    camb2 = (b+a)/2.0

    for i in range(3):
        sum_o += lista_a[i]*f(camb1*lista_x[i]+camb2)
    return camb1*(sum_o)
