programa {
	funcao inicio() {
		real numero

		escreva("Digite um numero para saber seu Fatorial: ")
		leia(numero)
				
		se(numeroFatorial(numero) == 0) {
			escreva("Este numero nao tem fatorial.")
		}senao {
			escreva("O fatorial do numero ", numero, " eh ", numeroFatorial(numero), ".")
		}
	}

	funcao real numeroFatorial(real num) {
		se (num <= 0.0) {
			retorne 0.0
		}
			
		real fatorial = 1.0
		para(real i=2.0; i<=num; i+=1.0){
			fatorial *= i
		}

		retorne fatorial
	}
}
