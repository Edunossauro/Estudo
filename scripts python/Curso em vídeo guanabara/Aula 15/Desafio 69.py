##Programa que leia idade e sexo de várias pessoas. Cada uma perguntar se quer continuar
##Mostrar quantas tem mais de 18, Quantas são homens e quantas são mulheres
#a=contador h=homem m=mulher i=idade d=mais de dezoito
a=0
s=0
h=0
m=0
d=0
i=0
while a==0:
    i=int(input('Qual a idade?'))
    if i > 18:
        d +=1
    s=int(input('É homem(1) ou mulher(2)?'))
    if s==1:
        h +=1
    elif s==2:
        m +=1
    x=int(input('Você quer continuar? (1)Sim (2)Não'))
    if x==1:
        a=0
    else:
        a=1
print(f'{d} pessoas tem mais de 18 anos, {h} são homens e {m} são mulheres.')