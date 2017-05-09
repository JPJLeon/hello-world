###############################
Integrantes:
	Jordan Esquivel 201473022-5 jesquive
	Juan Pablo Leon 201473   -  jleon

###############################
Tarea 4:
Nuestro programa como la tarea lo declaro, hace un uso extensivo en lo que son
expresiones regulares. Primero nuestro programa consta de 3 programas:

	-stdlib.py : Este tiene las funciones que se pueden usar en el lenguaje
		     de input y que se puedan pasar a python. (ej: EQ(A, B)
		     (LT(A, B)).
	-RegularLibrary.py : La piedra angular del programa ya que este contiene
		     no solo todas las expresiones regulares usadas, ademas
		     las coincidencias de estas y se encarga de la escritura
		     en el nuevo archivo <nombre>.py
	-Tarea4.py : Este es el main de la funcion que usa todas las funciones
		     presentadas en la RegularLibrary.py, este verifica el 
		     cumplimiento de estas, si alguna linea no cumple con alguna
		     de las expresiones regulares, este lanzara un error.

Ahora se pasara a explicar de mejor forma estos 2 ultimos ya que son los mas
importantes.

################################
Tarea4.py
	Este cumple con lo anterior nombrado. pero ademas se encarga de crear
	el nuevo archivo <nombre>.py que se escribira con la funcion 
	makepy(string).
	Otra cosa es que para lo que es un proceso posee la variable "switch",
	que es un booleano. Este sirve para denotar si estamos dentro de un
	proceso o no (ya que estos para escribirlos en el <nombre>.py necesitan
	mas identacion).
	Ademas cada expresion regular devuelve un booleano para saber si esta
	se cumplio o no, si ninguna se cumple lanza el error anteriormente 
	nombrado (Este te dice en que linea ocurrio el error sin detener el
	funcionamiento del programa, pero no escribe las lineas que esten
	mal escritas).

RegularLibrary.py
	Aqui se encuentran 3 cosas:
		-La funcion de creacion de archivo.
		-Expresiones regulares y funciones que las usan.
		-Funciones auxiliares para manipular mejor los textos a escribir.

	Las funciones regexp devuelven False si la expresion no se cumple y
	true si lo hacen.
	
	##Creacion de Archivo##

	-makepy(string) : Crea el archivo a partir de un string, agregando
			 en la cabezera "from stdlib import*"
	
	##Expresiones regulares y funciones##

	Cada expresion regular estara comentada.

	-regexp_asignacion(linea, archivo_w) : usa la expresiones regulares
			 para la asignacion de variable (todas las funciones
			 tienen un nombre que permite identificarse) pero solo
			 sirve para asignar variable = num|True|False. 

	-regexp_asignacion_var_var(linea, archivo_w): usa otras 2 expresiones
			 regulares para asignar variables a otra variable.
			 Cabe destacar que estas hacen uso de 2 expresiones
			 regulares (al igual de la anterior) ya que la 
			 la asignacion es "conmutativa" por asi decirlo..
	
	-regexp_asignacion_var_proc(linea, archivo_w): al igual que sus
			 predecesores, usa 2 expresiones regulares para poder
			 asignar variables a return de procedimientos. 

	-regexp_asignacion_var_ifelse_var(linea, archivo_w): usa 2 expresiones
			 regulares para identificar las expresiones if else
			 y poder escribirlas como una asignacion de variable
			 con el termino del medio del if else como un numero,
			 booleano o una variable.
	
	-regexp_asignacion_var_ifelse_proc(linea, archivo_w): hace exactamente
			 lo anterior pero cambia las expresiones regulares para
			 variable = ifelse (proc) (proc2) (proc3), es decir,
			 para que el termino del medio se un procedimiento.

	-regexp_llamar_proc(linea, archivo_w): como su nombre indica, usa
			 expresion regular para poder escribir la llamada de
			 un procedimiento.
	
	-regexp_proc(linea, archivo_w, switch): esta es la funcion que usa
			 expresiones para detectar el inicio de un proceso.
			 La variable switch indica si la linea actual es el
			 comienzo de el proceso o lo que se puede asignar en el.
			 Cuando el switch es verdad, se verificara si alguna
			 linea corresponde a alguna expresion regular valida
			 para escribir dentro del proceso e identandola.

	-linea_vacia(linea, archivo_w): revisa con una expresion regular
			 la ausencia de otros caracteres que no sean espacios.

	-regex_ifelse(linea, archivo_w): funcion que gracias a su expresion
			 regular denota una forma de if else sin haber sido
			 asignada.

	##Auxiliares##

	-transformar(string): transforma de la forma
			 (procedimiento arg1 arg2 arg3) -> procedimiento(arg1, arg2, arg3)
			 Usada en la funciones que necesitan cambiar las formas
			 para poder escribir de forma python los procedimientos.
	
	-booltransf(string): funcion creada para acortar algunasl lineas.
			 Simplemente lee el string y cambia de los booleanos
			 TRUE -> True y FALSE -> False.

	-verificarparentesis(lista): funcion creada ya que existia un problema
			 donde en la funcion transformar no eliminaba ciertos 
			 parentesis. Este revisa la lista y por cada elemento
			 revisa para quitarle los parentesis a traves de una
			 expresion regular.

################################
PEP8
	Se siguio la mayoria de las reglas del PEP8 excepto una. Decidimos
	no seguir regla que indica el largo maximo de una linea, ya que
	algunas expresiones regulares eran demasiado largas para quedar
	en la norma.