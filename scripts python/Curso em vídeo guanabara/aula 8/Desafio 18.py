#Programa que leia um ângulo qualquer e mostre o valor do seno e coseno
import math
ang=float(input('Digite um ângulo qualquer:'))
#Ele calcula em radianos por padrão, devo converter
sin=math.sin(math.radians(ang))
cos=math.cos((math.radians(ang)))
print('O Seno do ângulo equivale a {} e o cosseno do ângulo equivale a {}'.format(sin , cos))