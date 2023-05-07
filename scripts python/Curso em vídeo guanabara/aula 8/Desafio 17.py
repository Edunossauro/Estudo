#Desafio 17
#Programa que leia o cateto oposto e cateto adjascente de um triângulo e calcule a hipotenusa
import math
adj = float(input('Digite o cateto oposto do triângulo retângulo:'))
opo = float(input('Digite o cateto adjascente do triângulo retângulo:'))
hip=(math.sqrt((adj**2)+(opo**2)))
print('A hipotenusa do triângulo retângulo de catetos {} e {} é: {}'.format(adj , opo , hip))