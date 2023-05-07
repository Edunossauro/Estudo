#Programa que leia um número e diga seu fatorial
n=int(input('Será calculado o fatorial do número:'))
fatorial=1
contador=1
while contador<=n:
    fatorial*=contador
    contador+=1
print('Fatorial:',fatorial)
#Multiplicar o número por 1, soma 1, dai ele vai ser multiplicado por 2. É tipo uma jeito inverso
#Da fatorial, muito engraçado. 1.2.3.4 invés de 4.3.2.1, ai quando chega n.n ele para