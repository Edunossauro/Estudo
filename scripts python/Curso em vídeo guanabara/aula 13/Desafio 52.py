#Diga se é primo
x=int(input('Qual número você deseja verificar?'))
if x==1:
    print('Não primo')
elif x==2:
    print('Não primo')
else:
    for c in range (2,(x-1)):
       if x%c==0:
           x=0
if x==0:
    print('Não primo')
else:
    print('É primo')

