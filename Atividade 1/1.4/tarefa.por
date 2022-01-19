programa {
	funcao inicio() {
		inteiro numero

		escreva("Digite um numero para saber seu Fatorial: ")
		leia(numero)

		escreva("O fatorial do numero ", numero, " eh ", numeroFatorial(numero))
	}

	funcao inteiro numeroFatorial(inteiro num) {
		inteiro fatorial = 1
		para(inteiro i=2; i<=num; i++){
			fatorial *= i
		}

		retorne fatorial
	}
}
