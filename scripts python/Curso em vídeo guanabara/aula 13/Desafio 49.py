#Tabuada de um número qualquer
a=int(input('Você quer a tabuada de qual número?'))
for c in range(0,11):
    print('{}x{}={}'.format(a,c,a*c))