programa
{
	funcao inicio()
	{
		inteiro maiorNumero = 0
		inteiro i
		
		para (i = 1; i <= 5 ; i++)
		{
			inteiro numeroDigitado
			escreva("Digite o "+i+ "º número Natural: ")
			leia(numeroDigitado)

			enquanto (numeroDigitado < 0)
			{
				escreva("Digite o "+i+ "º número Natural: ")
				leia(numeroDigitado)
			}
		
			se (numeroDigitado > maiorNumero){
				maiorNumero = numeroDigitado
				
		}
}
escreva("O maior número Natural Digitado foi "+maiorNumero+"!!!")
			}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */