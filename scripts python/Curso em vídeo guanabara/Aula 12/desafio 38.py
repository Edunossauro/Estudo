# Programa que leia dois números inteiro e compare, mostrando se o primeiro é maior, o segundo ou se os
# dois são iguais
primeiro=int(input('Escreva o primeiro número para ser comparado'))
segundo=int(input('Escreva o segundo número para ser comparado'))
if primeiro>segundo:
    print('O primeiro é maior')
elif primeiro==segundo:
    print('Os dois são iguais')
else:
    print('O segundo é maior')