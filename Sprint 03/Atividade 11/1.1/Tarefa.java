import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int maiorNumero = 0;
		final int QUANTIDADE_REPETICOES = 5;

		for(int i=1; i<=QUANTIDADE_REPETICOES; i++) {
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
