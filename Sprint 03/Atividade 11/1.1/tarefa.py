maior_numero = 0
QUANTIDADE_REPETICOES = 6

for i in range(1, QUANTIDADE_REPETICOES):
	numero_digitado = int(input(f"Digite o {i}-esimo numero Natural: "))
	
	while (numero_digitado < 0):
		print("Valor invalido: numero digitado menor que 0.")
		numero_digitado = int(input(f"Digite o {i}-esimo numero Natural: "))
	
	if (numero_digitado > maior_numero):
		maior_numero = numero_digitado

print(f"\nO maior numero Natural digitado foi {maior_numero}!")
