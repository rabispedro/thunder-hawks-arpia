pcGasolina = -1
pcAlcool = -1

while(pcGasolina <= 0):
	pcGasolina = float(input('Informe o preço da Gasolina: '))

while(pcAlcool <= 0):
	pcAlcool = float(input('Informe o preço do Alcool: '))

calculoDiferenca =  pcAlcool / pcGasolina

if calculoDiferenca > 0.70:
	print('A gasolina é melhor!', calculoDiferenca)
else:
	print('O alcool é melhor!', calculoDiferenca)
