programa {
	inclua biblioteca Matematica --> mat

	funcao inicio() {
		inteiro num
		escreva("Digite um numero: ")
		leia(num)

		escreva("Numero digitado: ", num, "\n")
		escreva("Esse numero é primo? ", ehPrimo(num))
	}

	funcao logico ehPrimo(inteiro num) {
		se(num%2 == 0){
				retorne falso
		}

		inteiro raiz
		raiz = mat.raiz(num, 2.0)

		para(inteiro i=3; i<=raiz; i+=2){
			se((num%i) == 0){
				retorne falso
			}
		}

		retorne verdadeiro
	}
}
