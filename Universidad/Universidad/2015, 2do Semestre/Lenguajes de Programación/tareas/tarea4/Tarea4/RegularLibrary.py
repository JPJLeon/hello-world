import re
# Nuestras expresiones regulares
matcher1 = re.compile("^[ ]*VAR\(([a-zA-Z]+)\)[ ]+<=[ ]+([0-9]+|TRUE|FALSE)$")  # variable = num, True, false
matcher2 = re.compile("^[ ]*([0-9]+|TRUE|FALSE)[ ]+=>[ ]+VAR\(([a-zA-Z]+)\)$")
matcher3 = re.compile("^[ ]*VAR\(([a-zA-Z]+)\)[ ]+<=[ ]+([a-zA-Z]+)$")  # variable1 = variable2
matcher4 = re.compile("^[ ]*([a-zA-Z]+)[ ]+=>[ ]+VAR\(([a-zA-Z]+)\)$")
matcher5 = re.compile("^\$\^PROC\(([a-zA-Z]+)\)")  # declaracion procedimiento
matcher6 = re.compile("^[ ]*$")  # lineas vacias
matcher7 = re.compile("^[ ]*\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE))*\)$")  # llamada de un procedimiento
matcher8 = re.compile("^[ ]*VAR\(([a-zA-Z]+)\)[ ]+<=[ ]+(\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE)*\))$")  # variable = return de un procedimiento
matcher9 = re.compile("^[ ]*(\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE)*\))[ ]+=>[ ]+VAR\(([a-zA-Z]+)\)$")
matcher10 = re.compile("^[ ]*(\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE)*\))$")  # llamada de un procedimiento: (proc arg1 arg2 arg3)
matcher11 = re.compile("^[ ]*#(\(*[a-zA-Z]+\)*|TRUE|FALSE|[0-9]+)$")  # Es el return de un proceso
matcher12 = re.compile("^[ ]*\^\$$")
matcher13 = re.compile("^[ ]*IFELSE (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\)) (TRUE|FALSE|\w+) (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\))$")  # IF ELSE CON NUM/VAR/BOOL
matcher14 = re.compile("[ ]*IFELSE ((\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\)[ ]*)+)$")
matcher15 = re.compile("^[ ]*PARAM([0-9]+)$")
matcher16 = re.compile("^[ ]*VAR\(([a-zA-Z]+)\)[ ]+<=[ ]+IFELSE (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\)) (TRUE|FALSE|\w+) (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\))$")  # variable = ifelse variable/true/false
matcher17 = re.compile("^[ ]*IFELSE (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\)) (TRUE|FALSE|\w+) (\(([a-zA-Z]+)([ ][a-zA-Z]+|[ ][0-9]+|[ ]TRUE|[ ]FALSE|[ ]PARAM([0-9]+))*\))[ ]+=>[ ]*VAR\(([a-zA-Z]+)\)$")
matcher18 = re.compile("^[ ]*VAR\(([a-zA-Z]+)\)[ ]+<=[ ]+IFELSE (\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)(\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)(\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)$")  # variable = ifelse con proc
matcher19 = re.compile("^[ ]*IFELSE (\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)(\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)(\(([a-zA-Z]+)([ ]([a-zA-Z]+|[0-9]+|TRUE|FALSE|PARAM([0-9]+)))*\)[ ]*)[ ]+=>[ ]*VAR\(([a-zA-Z]+)\)$")
matcher20 = re.compile("^[ ]*\(*(\w+)\)*$")


def makepy(string):
    arch = open(string + ".py", 'a')
    arch.write("from stdlib import* \n\n")
    arch.close()


def regexp_asignacion(linea, archivo_w):  # variable = numero, True, False
    arch = open(archivo_w + ".py", 'a')
    m1 = matcher1.match(linea)
    m2 = matcher2.match(linea)
    if m1:
        valor = booltransf(m1.group(2))
        arch.write(m1.group(1) + " = " + valor + "\n")
        arch.close()
        return True
    
    elif m2:
        valor = booltransf(m2.group(1))
        arch.write(m2.group(2) + " = " + valor + "\n")
        arch.close()
        return True
    
    arch.close()
    return False


def regexp_asignacion_var_var(linea, archivo_w):  # variable1 = variable2
    arch = open(archivo_w + ".py", 'a')
    m3 = matcher3.match(linea)
    m4 = matcher4.match(linea)
    if m3:
        arch.write(m3.group(1) + " = " + m3.group(2) + "\n")
        arch.close()
        return True
    elif m4:
        arch.write(m4.group(2) + " = " + m4.group(1) + "\n")
        arch.close()
        return True
        
    arch.close()
    return False


def regexp_asignacion_var_proc(linea, archivo_w):  # variable = return de un procedimiento
    arch = open(archivo_w + ".py", 'a')
    m8 = matcher8.match(linea)
    m9 = matcher9.match(linea)
    if m8:
        arch.write(m8.group(1) + " = " + transformar(m8.group(2)) + "\n")
        arch.close()
        return True
    elif m9:
        arch.write(m9.group(4) + " = " + transformar(m9.group(1)) + "\n")
        arch.close()
        return True

    arch.close()
    return False


def regexp_asignacion_var_ifelse_var(linea, archivo_w):  # variable = ifelse variable/true/false
    arch = open(archivo_w + ".py", 'a')
    m16 = matcher16.match(linea)
    m17 = matcher17.match(linea)

    if m16:
        valor = booltransf(m16.group(6))
        arch.write(m16.group(1) + " = " + transformar(m16.group(2)) +
                   " if " + valor + " else " + transformar(m16.group(7)) +
                   "\n")
        arch.close()
        return True
    elif m17:
        valor = booltransf(m17.group(5))
        arch.write(m17.group(10) + " = " + transformar(m17.group(1)) +
                   " if " + valor + " else " +
                   transformar(m17.group(6)) + "\n")
        arch.close()
        return True
    arch.close()
    return False


def regexp_asignacion_var_ifelse_proc(linea, archivo_w):  # variable = ifelse proc
    arch = open(archivo_w + ".py", 'a')
    m18 = matcher18.match(linea)
    m19 = matcher19.match(linea)
    if m18:
        arch.write(m18.group(1) + " = " + transformar(m18.group(2)) +
                   " if " + transformar(m18.group(7)) + " else " +
                   transformar(m18.group(12)) + "\n")
        arch.close()
        return True
    elif m19:
        arch.write(m19.group(16) + " = " + transformar(m19.group(1)) +
                   " if " + transformar(m19.group(6)) + " else " +
                   transformar(m19.group(11)) + "\n")
        arch.close()
        return True
    arch.close()
    return False
                       

def regexp_llamar_proc(linea, archivo_w):  # llamada a un procedimiento
    arch = open(archivo_w + ".py", 'a')
    m10 = matcher10.match(linea)
    if m10:
        arch.write(transformar(m10.group(1)))
        arch.close()
        return True

    arch.close()
    return False


def regexp_proc(linea, archivo_w, switch):
    arch = open(archivo_w+".py", 'a')
    if switch:
        m11 = matcher11.match(linea)  # el del caracter ^$
        m12 = matcher12.match(linea)  # del return
        rm1 = matcher1.match(linea)  # De asignacion
        rm2 = matcher2.match(linea)
        rm3 = matcher3.match(linea)
        rm4 = matcher4.match(linea)
        rm16 = matcher16.match(linea)  # De variable = if else
        rm17 = matcher17.match(linea)
        rm18 = matcher18.match(linea)
        rm19 = matcher19.match(linea)
        if m12:
            return False
        if m11:
            arch.write("return " + m11.group(1) + "\n")
            arch.close()
            return True
        if rm1 or rm2:
            regexp_asignacion(linea, archivo_w)
        if rm3 or rm4:
            regexp_asignacion_var_var(linea, archivo_w)
        if rm16 or rm17:
            regexp_asignacion_var_ifelse_var(linea, archivo_w)
        if rm18 or rm19:
            regexp_asignacion_var_ifelse_proc(linea, archivo_w)
        arch.write("    ")
        arch.close()
        return True
    else:
        m5 = matcher5.match(linea)
        if m5:
            arch.write("\ndef " + m5.group(1) + "(*params):\n    ")
            arch.close()
            return True
        else:
            arch.close()
            return False


def linea_vacia(linea, archivo_w):
    arch = open(archivo_w + ".py", 'a')
    m6 = matcher6.match(linea)
    if m6:
        arch.write(linea)
        arch.close()
        return True
    return False
        

def regex_ifelse(linea, archivo_w):
    arch = open(archivo_w+".py", 'a')
    m13 = matcher13.match(linea)
    m14 = matcher14.match(linea)
    if m13:
        left = transformar(m13.group(1))
        mid = booltransf(m13.group(5))
        right = transformar(m13.group(6))
        arch.write(left + " if " + mid + " else " + right + "\n")
        arch.close()
        return True
    elif m14:
        listproc = m14.group(1).split(") ")
        left = transformar(listproc[0])
        mid = transformar(listproc[1])
        right = transformar(listproc[2])
        arch.write(left + " if " + mid + " else " + right + "\n")
        arch.close()
        return True
    else:
        arch.close()
        return False


def transformar(string):  # hace la transformacion (procedimiento arg1 arg2 arg3) -> procedimiento(arg1, arg2, arg3)
    lista = string.strip('(').strip(')').split()
    lista = verificarparentesis(lista)
    nuevo_s = (lista[0] + '(')
    lista.remove(lista[0])
    for i in range(len(lista)):
        lista[i] = booltransf(lista[i])
        m15 = matcher15.match(lista[i])
        if m15:
            lista[i] = "params["+m15.group(1)+"]"
        if i != len(lista)-1:
            nuevo_s = nuevo_s + lista[i] + ', '
        else:
            nuevo_s = nuevo_s + lista[i]
    return nuevo_s + ')'


def booltransf(string):  # Cambia al booleano de python
    if string == "TRUE":
        return "True"
    elif string == "FALSE":
        return "False"
    else:
        return string


def verificarparentesis(lista):
    for i in range(len(lista)):
        m20 = matcher20.match(lista[i])
        if m20:
            lista[i] = m20.group(1).strip('(').strip(')')
    return lista
