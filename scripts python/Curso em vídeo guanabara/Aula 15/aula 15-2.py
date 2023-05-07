##Exemplo igual o passado, porém agora usando break
n = s = 0
while True:
    n=int(input('Digite um número:'))
    if n == 999:
        break
    s += n
print ('A soma vale {}'.format(s))
#print(f'A soma vale:{s}')