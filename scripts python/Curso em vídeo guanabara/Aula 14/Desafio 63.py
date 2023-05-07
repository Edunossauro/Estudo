#Leia número n inteiro e mostre os primeiros n termos de fibonacci
#Chora ricardo
n=int(input('Quantas casas de fibonacci você quer?'))
a1=0
a2=1
for c in (0,n):
   a3=a1+a2
   print(a3)
   a1=a2
   a2=a3