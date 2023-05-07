# Faça um Programa que leia o sexo mas só aceite "M" e "F", caso esteja errado peça novamente
sexo=str(input('Qual seu Sexo [M]/[F]?'.upper()))
while sexo not in 'MmFf':
    sexo = str(input('Qual seu Sexo [M]/[F]?'.upper()))
    print('Inválido, digite novamente')
print('Sexo {} registrado com sucesso'.format(sexo).upper())