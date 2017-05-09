
from RegularLibrary import*

arch = raw_input("Ingrese nombre del Archivo: ")
archivo_r = open(arch, 'r')
arch = arch.split(".")[0]
makepy(arch)
line = archivo_r.readline()
switch = False
contador = 0
while line != "":
    contador += 1
    if switch:
        switch = regexp_proc(line, arch, switch)
        # print "Linea numero ", contador, "correcta "
    else:
        if (
         linea_vacia(line, arch) or  # aqui revisamos si la linea se ajusta a
         regexp_asignacion(line, arch) or  # alguna de nuestras E.R.
         regexp_asignacion_var_var(line, arch) or
         regexp_asignacion_var_proc(line, arch) or
         regexp_llamar_proc(line, arch) or
         regexp_asignacion_var_ifelse_var(line, arch) or
         regexp_asignacion_var_ifelse_proc(line, arch) or
         regex_ifelse(line, arch)):
            pass
            # print "Linea numero ", contador, "correcta "
        elif regexp_proc(line, arch, switch):
            switch = True
            # print "Linea numero ", contador, "correcta "
        else:
            print "Error en linea numero ", contador, ": "
            print "    ", line.strip()
    line = archivo_r.readline()
archivo_r.close()
