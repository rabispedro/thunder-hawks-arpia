import java.util.Scanner;
public class Tarefa {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		long maior = 0;
		long menor = Integer.MAX_VALUE;
		int contadorNumeros = 0;
		final int NUMERO_DE_SAIDA = -1;
		
		while(true) {
			contadorNumeros++;
			
			long numerosDigitados = 0;
			do{
				System.out.print("Digite o " + contadorNumeros + "-esimo numero natural: ");
				numerosDigitados = scan.nextLong();
			if(numerosDigitados <= -2){
			    
			    System.out.print("Valor invalido: numero digitado menor que 0 e diferente de -1.\n");
			}	
				
			}while(numerosDigitados < NUMERO_DE_SAIDA);
			
			if(numerosDigitados == NUMERO_DE_SAIDA) break;
	
			maior = (numerosDigitados > maior) ? numerosDigitados : maior;
			menor = (numerosDigitados < menor) ? numerosDigitados : menor;
		}

		if(contadorNumeros == 1){
			System.out.printf("Nenhum numero valido foi digitado!\n");
		}else {
			System.out.printf("O menor numero natural digitado foi " + menor + "!\n");
			System.out.printf("O maior numero natural digitado foi " + maior + "!\n");
		}

		scan.close();
	}
}