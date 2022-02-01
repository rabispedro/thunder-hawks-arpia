programa {
	funcao inicio() {
		//	Maior numero inteiro de 32bit
		const real MAIOR_NUMERO = 2147483647.00
		const inteiro NUMERO_DE_SAIDA = -1
		
		real numero
		real maior = 0.0
		real menor = MAIOR_NUMERO
		real contadorNumeros = 0.0

		enquanto(verdadeiro) {
			contadorNumeros++

			escreva("Digite um numero: ")
			leia (numero)
			
			enquanto(numero < NUMERO_DE_SAIDA){
				escreva("Valor invalido: numero digitado menor que 0.\n")
				escreva("Digite um numero: ")
				leia (numero)
			}

			se(numero == NUMERO_DE_SAIDA) {
				pare
			}

			se(numero > maior) {
				maior = numero
			}
			se(numero < menor) {
				menor = numero
			}
		}

		se(contadorNumeros == 1) {
			escreva("\nNenhum valor valido foi digitado!")
		}senao {
			escreva("\nO maior numero e: ", maior)
			escreva("\nO menor numero e: ", menor)
		}
	}
}
