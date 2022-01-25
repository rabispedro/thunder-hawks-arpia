programa {
	funcao inicio() {
		//	Maior numero inteiro que o Portugol suporta (testado empiricamente)
		const inteiro MAIOR_NUMERO_INTEIRO = 2147483647
		const inteiro NUMERO_DE_SAIDA = -1

		inteiro numero
		inteiro maior = 0
		inteiro menor = MAIOR_NUMERO_INTEIRO
		inteiro contadorNumeros = 0

		enquanto(verdadeiro) {
			contadorNumeros++

			faca{
				escreva("Digite um numero: ")
				leia (numero)
			}enquanto(numero < NUMERO_DE_SAIDA)

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
