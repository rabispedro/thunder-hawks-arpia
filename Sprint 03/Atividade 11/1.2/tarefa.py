from sys import maxsize

numero = 0
maior = 0
menor = maxsize
contadorNumeros = 0
NUMERO_DE_SAIDA = -1

while(True):
	contadorNumeros += 1
	
	#	Reinicia o valor do numero
	numero = NUMERO_DE_SAIDA - 1
	numero = int(input("Digite um numero: "))

	while(numero < NUMERO_DE_SAIDA):
		print("Valor invalido: numero digitado menor que 0.")
		numero = int(input("Digite um numero: "))

	if(numero == NUMERO_DE_SAIDA):
		break

	if(numero > maior):
		maior = numero
	if(numero < menor):
		menor = numero

if contadorNumeros == 1:
	print("Nenhum valor valido foi digitado!")
else:
	print("O menor numero natural digitado foi " + str(menor))
	print("O maior numero natural digitado foi " + str(maior))
