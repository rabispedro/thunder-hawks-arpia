programa
{
	
	funcao inicio()
	{
		real pcGasolina, pcAlcool, calculoDiferenca

		escreva("Informe o preço da Gazolina:\n")
		leia(pcGasolina)
		escreva("Informe o preço do Alcool:\n")
		leia(pcAlcool)
		calculoDiferenca = pcAlcool / pcGasolina
		
		se (calculoDiferenca >= 0.70){
			 escreva(calculoDiferenca, " - Gasolina é melhor!")
		}
		senao {
			escreva(calculoDiferenca, " - Alcool é melhor!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */