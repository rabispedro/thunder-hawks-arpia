programa {
	funcao inicio() {
		real pcGasolina, pcAlcool, calculoDiferenca
		
		faca{
			escreva("Informe o preço da Gasolina: ")
			leia(pcGasolina)
		}enquanto(pcGasolina <= 0)

		faca {
			escreva("Informe o preço do Alcool: ")
			leia(pcAlcool)
		}enquanto(pcAlcool <= 0)

		calculoDiferenca = pcAlcool / pcGasolina
		
		se(calculoDiferenca > 0.70) {
			escreva(calculoDiferenca, " - Gasolina é melhor!")
		}senao {
			escreva(calculoDiferenca, " - Alcool é melhor!")
		}
	}
}
