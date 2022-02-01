pcGasolina = -1
pcAlcool = -1
resposta = ""

pcGasolina = float(input('Informe o preço da Gasolina: '))
while(pcGasolina <= 0):
	print("Valor invalido: numero digitado menor que 0.")
	pcGasolina = float(input('Informe o preço da Gasolina: '))

pcAlcool = float(input('Informe o preço do Alcool: '))
while(pcAlcool <= 0):
	print("Valor invalido: numero digitado menor que 0.")
	pcAlcool = float(input('Informe o preço do Alcool: '))

calculoDiferenca =  pcAlcool / pcGasolina

if calculoDiferenca > 0.70:
	resposta = "Gasolina"
else:
	resposta = "Alcool"

print(f"{calculoDiferenca}: {resposta} eh melhor")
