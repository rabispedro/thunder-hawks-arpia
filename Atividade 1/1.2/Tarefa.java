import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int maior = 0;
		int menor = Integer.MAX_VALUE;
		int i = 0;
		final int NUMERO_DE_SAIDA = -1;
		
		while(true) {
			i++;
			
			int numerosDigitados;
			
			do{
				System.out.print("Digite o " + i + "-esimo numero natural: ");
				numerosDigitados = scan.nextInt();
			}while(numerosDigitados < NUMERO_DE_SAIDA);
			
			if(numerosDigitados == NUMERO_DE_SAIDA) break;
	
			maior = (numerosDigitados > maior) ? numerosDigitados : maior;
			menor = (numerosDigitados < menor) ? numerosDigitados : menor;
		}

		System.out.println("O menor numero natural digitado foi " + menor + "!");
		System.out.println("O maior numero natural digitado foi " + maior + "!");
		scan.close();
	}
}
