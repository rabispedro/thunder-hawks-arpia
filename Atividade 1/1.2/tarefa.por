programa {
	funcao inicio() {
		inteiro numero
		inteiro maior = 0
		inteiro menor = 1000
		logico aux = verdadeiro
		const inteiro NUMERO_DE_SAIDA = -1
		
		enquanto(aux == verdadeiro){
		
			faca{
				escreva("Digite um numero: ")
				leia (numero)
			}enquanto(numero < NUMERO_DE_SAIDA)
			
			se(numero == NUMERO_DE_SAIDA) {
				aux = falso
			}senao se(numero > maior) {
				maior = numero
			}senao se(numero < menor) {
				menor = numero
			}
	  }

		escreva("\nO maior numero e: " ,maior)
		escreva("\nO menor numero e: " ,menor)
	}
}
