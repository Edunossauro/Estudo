#PC pensa em um número entre 0 e 10 e o jogador precisa adivinhar, diga quantas vez foi necessário chutar
import random
computador=int(random.choice(['0','1','2','3','4','5','6','7','8','9','10']))
jogador=int(input('Escolha um número:'))
contador=0
while jogador!=computador:
    jogador = int(input('Escolha um número:'))
    contador +=1
print('Você demorou {} tentativas para acertar'.format(contador))
