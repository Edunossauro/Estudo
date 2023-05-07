# Leia ano de nascimento de 7 pessoas. Mostre quantas não atingiram a maioridade e quantas atingiram
maior=0
menor=0
x=0
p=0
for c in range (0,7):
    x=int(input('Coloque o ano de nascimento'))
    idade=int((2022-x))
    if idade>=18:
            maior=maior+1
    else:
            menor=menor+1
print('{} são maiores e {} são menores'.format(maior,menor))