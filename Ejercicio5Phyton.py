Historial = (2350, 5960, 23000, 1000, 8900)


def sumaTupla (Historial):
    suma = 0
    for elemento in Historial:
        suma += elemento
    return suma

if sumaTupla(Historial)< 30000:
    print (sumaTupla(Historial))

else:
    print ('Gastos por encima de lo presupuestado')
