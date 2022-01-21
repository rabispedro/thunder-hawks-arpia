programa {
	funcao inicio() {
		inteiro maiorNumero = 0
		const inteiro QUANTIDADE_REPETICOES = 5

		para(inteiro i = 1; i <= QUANTIDADE_REPETICOES ; i++) {
			inteiro numeroDigitado
			
			escreva("Digite o " + i +  " número Natural: ")
			leia(numeroDigitado)

			enquanto(numeroDigitado < 0) {
				escreva("Digite o "+i+ "º número Natural: ")
				leia(numeroDigitado)
			}
		
			se(numeroDigitado > maiorNumero) {
				maiorNumero = numeroDigitado
		  }
    }
		escreva("O maior numero Natural Digitado foi "+maiorNumero+"!!!")
	}
}
