# Leia nome, idade e sexo de 4 pessoas. Mostre média da idade, qual o nome do homem mais velho e quantas mulheres
# tem menos de 20 anos
idade=0
velho=0
v=0
menor20=0
for p in range (1,5):
    print('{}ºpessoa'.format(p))
    nome=str(input('Digite o nome da pessoa:'))
    v=idade
    idade=int(input('Digite a idade da pessoa:'))
    sexo=int(input('Digite o sexo da pessoa(1-M/2-F):'))
    v=v+idade
    if sexo==2:
        if idade<20:
            menor20=menor20+1
    if p==1:
        if sexo==1:
            velho=idade
    else:
        if sexo==1:
            if idade>velho:
                velho=idade
                nomevei=nome
print('A média de idade é:{}'.format((v/4)))
print('O homi mais velhor tem:{} e se chama {}'.format(velho,nomevei))
print('{} Muiés tem menos de 20 anos'.format(menor20))


