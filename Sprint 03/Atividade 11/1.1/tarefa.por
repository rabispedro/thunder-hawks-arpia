programa {
	funcao inicio() {
		real maiorNumero = 0
		const inteiro QUANTIDADE_REPETICOES = 5

		para(inteiro i = 1; i <= QUANTIDADE_REPETICOES ; i++) {
			real numeroDigitado
			
			escreva("Digite o " + i + "-esimo número Natural: ")
			leia(numeroDigitado)

			enquanto(numeroDigitado < 0) {
				escreva("Valor invalido: numero digitado menor que 0.\n")
				escreva("Digite o " + i + "-esimo número Natural: ")
				leia(numeroDigitado)
			}
		
			se(numeroDigitado > maiorNumero) {
				maiorNumero = numeroDigitado
		  }
    }
		escreva("O maior numero Natural Digitado foi "+maiorNumero+"!!!")
	}
}
