import java.util.Scanner;

public class ExercicioDois {
	public static void main(String[] args) {	
		Scanner scan = new Scanner(System.in);
		int maior = 0;
		int menor = Integer.MAX_VALUE;
		int i = 0;
		
		while(true) {
			i++;
			
			System.out.print("Digite o " + i + "-esimo numero natural: ");
			int numerosDigitados = scan.nextInt();
			
			if(numerosDigitados == -1) break;        
	
			numerosDigitados = (numerosDigitados < -1) ? 0 : numerosDigitados;
			maior = (numerosDigitados > maior) ? numerosDigitados : maior;
			menor = (numerosDigitados < menor) ? numerosDigitados : menor;
		}

		System.out.println("O menor numero natural digitado foi " + menor + "!");
		System.out.println("O maior numero natural digitado foi " + maior + "!");
		scan.close();
	}
}
