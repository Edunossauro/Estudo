#seis numeros inteiros e mostre a soma daqueles que forem par
s=0
for c in range(1,7):
    a=int(input('Digite o valor:'))
    if a%2==0:
        s=s+a
print(s)