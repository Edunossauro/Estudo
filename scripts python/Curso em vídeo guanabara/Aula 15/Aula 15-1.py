n = s = 0
while n !=999:
    n = int(input('Digite um número:'))
    s +=n
s -= 999
print('A soma vale {}'.format(s))
##Note que o 999 é uma bandeira, significa que quando eu escrever 999
##a estrutura de repetição while vai parar 