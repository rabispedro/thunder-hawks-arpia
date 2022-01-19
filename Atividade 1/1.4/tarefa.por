programa {
	funcao inicio() {
		/* O Usuário vai informar um valor e devera ser retornado o seu fatorial */
		
		inteiro numero
		
		escreva("Digite um número para saber seu Fatorial: ")
		leia(numero)
		
		escreva("O fatorial do número ", numero, " é ", numeroFatorial(numero))
	}
	
	funcao inteiro numeroFatorial(inteiro num) {
	    inteiro fatorial = 1
	    para(inteiro i=2; i<=num; i++){
	        fatorial *= i
	    }
	    retorne fatorial
	}
}