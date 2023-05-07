# Criar um programa que jogue jokenpô
import random
import time
computador=int(random.choice(['1','2','3']))
# 1= Pedra, 2=Papel, 3=Tesoura
print('Esse é um jogo de jokenpô, meu nome é Alie e jogarei com você')
jogador=int(input('Jogue 1 para Pedra, 2 para Papel e 3 para Tesoura'))
if jogador==1:
    print('Você jogou Pedra')
elif jogador==2:
    print('Você jogou Papel')
elif jogador==3:
    print('Você jogou tesoura')
print('JO')
time.sleep(0.5)
print('KEN')
time.sleep(0.3)
print('PO!')
if computador==1:
    print('Eu jogo Pedra')
elif computador==2:
    print('Eu jogo Papel')
elif computador==3:
    print('Eu jogo Tesoura')
if computador==1:
    if jogador==1:
        print('Empate')
    elif jogador==2:
        print('Você venceu')
    elif jogador==3:
        print('Você perdeu')

elif computador==2:
    if jogador==1:
     print ('Você perdeu')
    elif jogador==2:
     print('Empate')
    elif jogador==3:
     print('Você ganhou')

elif computador==3:
  if jogador==1:
   print('Você ganhou')
  elif jogador==2:
   print('Você perdeu')
  elif jogador==3:
    print('Empate')
