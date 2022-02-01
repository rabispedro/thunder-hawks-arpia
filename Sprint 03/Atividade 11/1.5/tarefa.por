programa {
	funcao inicio() {
		real pcGasolina, pcAlcool, calculoDiferenca
		cadeia resposta = ""
		
		escreva("Informe o preço da Gasolina: ")
		leia(pcGasolina)
		
		enquanto(pcGasolina <= 0) {
			escreva("Valor invalido: numero digitado menor que 0.\n")
			escreva("Informe o preço da Gasolina: ")
			leia(pcGasolina)
		}
		
		escreva("Informe o preço do Alcool: ")
		leia(pcAlcool)
		
		enquanto(pcAlcool <= 0) {
			escreva("Valor invalido: numero digitado menor que 0.\n")
			escreva("Informe o preço do Alcool: ")
			leia(pcAlcool)
		}

		calculoDiferenca = pcAlcool / pcGasolina

		se(calculoDiferenca > 0.70) {
			resposta = "Gasolina"
		}senao {
			resposta = "Alcool"
		}
		
		escreva(calculoDiferenca, ": ", resposta, " eh melhor!")
	}
}
