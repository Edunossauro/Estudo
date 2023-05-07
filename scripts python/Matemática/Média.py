##Código pra calcular média
s=0.0
n=int(input('Digite quantas médidas você fez:'))
for c in range (0,n):
    x=float(input('Digite um valor:'))
    s += x
m=s/n
print(f'A média é {m}')