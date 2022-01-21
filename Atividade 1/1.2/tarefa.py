numero = -2
maior = 0
menor = 5000
cond = True
NUMERO_DE_SAIDA = -1

while(cond == True):
	while(numero < NUMERO_DE_SAIDA):
		numero = int(input("Digite um numero: "))

	if(numero == NUMERO_DE_SAIDA):
		cond = False
	elif(numero > maior):
		maior = numero
	elif(numero < menor):
		menor = numero

print("O menor numero natural digitado foi " + str(menor))
print("O maior numero natural digitado foi " + str(maior))
