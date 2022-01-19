import java.util.Scanner;

public class ExercicioUm {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int maiorNumero = 0;

		for(int i=1; i<= 5; i++) {
			int numerosDigitados;
			
			do {
				System.out.print("Digite o " + i + "-esimo numero natural: ");
				numerosDigitados = scan.nextInt();
			}while(numerosDigitados < 0);
			
			if(numerosDigitados > maiorNumero) maiorNumero = numerosDigitados;
		}
		
		System.out.println("O maior numero natural digitado foi " + maiorNumero + "!");
		scan.close();
	}
}
