programa {
	funcao inicio() {
		inteiro numero
		inteiro maior = 0
		inteiro menor = 1000
		
		inteiro i = 0
		
		logico aux = verdadeiro
		
		enquanto(aux == verdadeiro){
		escreva("Digite um numero: ")
		leia (numero)
		
		
		se(numero == -1)
		{
		    aux = falso
		}
		se(numero > maior)
		{
		    maior = numero
		}
		se(numero < menor e numero != -1)
		{
		    menor = numero
		}
		
		    
		    
		    
		    
		}
	
	    escreva("\nO maior numero e: " ,maior)
	    escreva("\nO menor numero e: " ,menor)
	    
	    
	}
}
