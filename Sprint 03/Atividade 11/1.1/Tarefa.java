import java.util.Scanner;

class Tarefa {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		long maiorNumero = 0;
		final int QUANTIDADE_REPETICOES = 5;

		for(int i=1; i<=QUANTIDADE_REPETICOES; i++) {
			long numerosDigitados;
			
			System.out.print("Digite o " + i + "-esimo numero natural: ");
				numerosDigitados = scan.nextLong();
			
			while(numerosDigitados < 0){
				System.out.print("Valor invalido: numero digitado menor que 0.\n");
				System.out.print("Digite o " + i + "-esimo numero natural: ");
				numerosDigitados = scan.nextLong();
			}
			
			if(numerosDigitados > maiorNumero) maiorNumero = numerosDigitados;
		}
		
		System.out.println("O maior numero natural digitado foi " + maiorNumero + "!");
		scan.close();
	}
}
