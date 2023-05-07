#Peso de 5 pesoas e diga qual é o maior e menor
maior=0
menor=0
for p in range (1,6):
    peso=int(input('Digite o peso da pessoa:'))
    if p==1:
        maior=peso
        menor=peso
    else:
        if peso>maior:
            maior=peso
        elif peso<menor:
            menor=peso
print('O menor peso é {} e o maior peso é {}'.format(menor,maior))