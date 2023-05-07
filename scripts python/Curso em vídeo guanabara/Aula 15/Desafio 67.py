##Faça um programa que mostre a tabuada de vários números, o programa será interrompido
#se for solicitado número negativo
a=0
while True:
    a=int(input('Você quer a tabuada de qual número?'))
    if a<0:
        break
    else:
        for c in range(0,11):
            print('{}x{}={}'.format(a,c,a*c))