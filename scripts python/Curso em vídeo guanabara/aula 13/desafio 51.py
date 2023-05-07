# Leia primeiro termo e razão da P.a. Mostre os 10 primeiros termos dessa pa
#an=a1+n.r
a1=int(input('Qual o primiero termo da P.A?'))
r=int(input('Qual a razão da P.A?'))
for c in range (0,11):
    an=a1+r*c
    print(an)
