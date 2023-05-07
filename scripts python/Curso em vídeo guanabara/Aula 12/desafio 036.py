# Escreva um programa para aprovar empréstimo bancário. Perguntar valor da casa, o salário do comprador
# E em quantos anos vai pagar, calcule o valor da prestação mensal sabendo que ela não pode passar de 30%do salário
print('Então você quer um empréstimo bancário? Esse aplicativo server para dizer se será aprovado ou não')
valor=int(input('Qual o valor do empréstimo que você quer?'))
salario=int(input('Qual o seu salário?'))
anos=int(input('Em quantos anos você vai pagar'))
prestacao=valor/(anos*12)
if prestacao/salario>0.3:
    print('Seu empréstimo foi negado')
else:
    print('Seu empréstimo foi aprovado')

