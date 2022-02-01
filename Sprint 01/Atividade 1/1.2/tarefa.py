from sys import maxsize

numero
maior = 0
menor = maxsize
contadorNumeros = 0
NUMERO_DE_SAIDA = -1

while(True):
	contadorNumeros += 1
	
	#	Reinicia o valor do numero
	numero = NUMERO_DE_SAIDA - 1

	while(numero < NUMERO_DE_SAIDA):
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
