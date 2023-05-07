##Crie um programa que leia vários nº inteiros e pare quando digitar 999
##No final mostre quantos números foram digitados e a soma entre eles (desconsiderar 999)
print('Esse programa serve para mostrar quantos números', end = ' ')
print('você digitou e a soma entre eles')
print('Para parar o programa digite o número 999')
n = s = 0
contador = 0
while True:
    n = int(input('Digite um número:'))
    if n == 999:
        break
    s +=n
    contador +=1
print (f'Você digitou {contador} números e a soma entre eles é {s}')
