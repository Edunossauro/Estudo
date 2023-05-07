##Programa que leia 2 números e mostre um menu
##1-somar 2-multiplicar 3-maior 4-novos números 5- sair do programa
a=int(input('Digite o primeiro número:'))
b=int(input('Digite o segundo número:'))
x=int(input('Digite 1-Somar, 2-Multiplicar,3-Verificar o maior,4-novos números,5-Sair do programa'))
while x==4:
    a=int(input('Digite o primeiro número:'))
    b=int(input('Digite o segundo número:'))
    x=int(input('Digite 1-Somar, 2-Multiplicar,3-Verificar o maior,4-novos números,5-Sair do programa'))
if x==1:
    print('A soma é:',a+b)
elif x==2:
    print('A multiplicação vale:',a*b)
elif x==3:
    if a>b:
        print(a,'é o maior')
    elif b>a:
        print(b,'é o maior')
    elif b==a:
        print('Os dois números são iguais')
elif x==5:
    exit()


