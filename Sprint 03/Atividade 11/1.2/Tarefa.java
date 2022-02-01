import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int maior = 0;
		int menor = Integer.MAX_VALUE;
		int contadorNumeros = 0;
		final int NUMERO_DE_SAIDA = -1;
		
		while(true) {
			contadorNumeros++;
			
			int numerosDigitados;
			do{
				System.out.print("Digite o " + contadorNumeros + "-esimo numero natural: ");
				numerosDigitados = scan.nextInt();
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
