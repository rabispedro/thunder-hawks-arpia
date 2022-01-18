pcGasolina = float(input('Informe o preço da Gasolina: '))

pcAlcool = float(input('Informe o preço do Alcool: '))

calculoDiferenca =  pcAlcool / pcGasolina

if calculoDiferenca >= 0.70:
    print ('A gasolina é melhor!', calculoDiferenca)
else:
    print ('O alcool é melhor!', calculoDiferenca)

