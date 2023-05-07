#Faça um programa que leia algo pelo teclado e mostre na tela
#o seu tipo primitivo e todas as informações possíveis sobre ele
x=input('Digite algo:')
print('É um número?')
print(x.isnumeric())
print('É uma letra?')
print (x.isalpha())
if (x.isnumeric())==True:
 print('É inteiro?')
 #o if diz que se x for um número ele perguntará se é inteiro, caso não
 #for número ele não perguntará

