#programita programoso
#JPL

containers = raw_input("INSERTE CONTAINERS: \n")
containers = containers.split()
puerto = []

for container in containers:
    container = int(container)
    if len(puerto) == 0:
        puerto.append([container])
    else:
        indice = 0
        for pila in puerto:
            if (pila[-1]-container) >= 0:
                puerto[indice].append(container)
                break
            indice += 1    
            if indice == len(puerto):
                puerto.append([container])
                break
                
print "PILAS: "
for i in range(len(puerto)):
    pila_str = ''
    for j in range(len(puerto[i])):
        pila_str += (str(puerto[i][j]) + ' ')
    print str(i+1)+">",pila_str
