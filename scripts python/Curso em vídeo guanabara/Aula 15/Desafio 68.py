##Faça um programa que jogue par ou impar com o computador. O jogo para quando o pc perder
#mostrando o total de vitórias consecutivas do jogador
#C = Computador, J = Jogador, n = teste se soma é impar ou par, t = contador, p = escolha do jogador se p ou i
#v = vitórias
import random
v = 0
n = 0
t = 0
o = 0
c=int(random.choice([1,2]))
while o==0:
    j=int(input('Esse é um jogo de par ou ímpar, escolha um número:'))
    p=int(input('Você quer impar(1) ou par (2)?'))
    print(f'Eu escolhi {c}')
    s = c+j
# n=1 indica que o resultado é impar e n=2 indica que é par
    if s==1:
        n=1
    elif s==2:
        n=2
    elif s==0:
        n=2
    elif s%2==0:
        n=2
    elif s%2!=0:
        n=1

    if p==1:
        if n==1:
            print('Você ganhou')
            v+=1
        elif n==2:
                print('Você perdeu')
                o=1
    elif p==2:
        if n==1:
            print('Você perdeu')
            o=1
        elif n==2:
            print('Você ganhou')
            v+=1
print(f'Você ganhou {v} vezes')

