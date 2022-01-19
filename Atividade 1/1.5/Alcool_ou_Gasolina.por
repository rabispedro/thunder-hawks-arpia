programa {
	funcao inicio() {
		real pcGasolina, pcAlcool, calculoDiferenca

		escreva("Informe o preço da Gasolina: ")
		leia(pcGasolina)

		escreva("Informe o preço do Alcool: ")
		leia(pcAlcool)

		calculoDiferenca = pcAlcool / pcGasolina
		
		se(calculoDiferenca > 0.70) {
			escreva(calculoDiferenca, " - Gasolina é melhor!")
		}senao {
			escreva(calculoDiferenca, " - Alcool é melhor!")
		}
	}
}
