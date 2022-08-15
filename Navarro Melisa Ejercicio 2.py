'''Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son: 23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”'''

           
DNI="23546987"
Nombre="Maria"
Apellido="Perez"
direccion="Pueyrredon811"
Dueno2=[DNI,Nombre,Apellido,direccion]
for n in Dueno2:
    if (n==DNI):
        continue
    if (n==Apellido):
        continue
    else:
        print(n)
