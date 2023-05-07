#Leia o primeiro termo, razão da pa, e mostra os 10 primeiros termos usando while
#an=a1+(n-1)*r
a1=int(input('Diga o primeiro termo:'))
an=a1
r=int(input('Diga a razão da pa:'))
m=int(input('Você quer quantos termos a mais de 10?'))
if m==0:
    exit()
n=1
while n<11+m:
    for c in (0,n+m):
        an=a1+(n-1)*r
        print(an)
        n += 1



