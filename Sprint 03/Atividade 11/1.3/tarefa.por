programa {
	inclua biblioteca Matematica --> mat

	funcao inicio() {
		real num
		escreva("Digite um numero: ")
		leia(num)

		escreva("Numero digitado: ", num, "\n")
		escreva("Esse numero eh primo? ", ehPrimo(num))
	}

	funcao logico ehPrimo(real num) {
		se(num <= 1.0) {
			retorne falso
		}

		se(num == 2.0) {
			retorne verdadeiro
		}

		inteiro raiz = mat.raiz(num, 2.0)

		para(inteiro i=3; i<=raiz; i+=2){
			inteiro numConvertido = num
			se((numConvertido % i) == 0.0){
				retorne falso
			}
		}

		retorne verdadeiro
	}
	
}
