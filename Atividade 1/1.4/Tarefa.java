import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		int number;
		Scanner in = new Scanner(System.in);
		
		System.out.printf("Digite um numero: ");
		number = in.nextInt();
		int fatorial = fatorial(number);
	
		System.out.printf("Numero digitado: " + number + ".\n");
		System.out.printf("Fatorial deste numero: " + fatorial + ".\n");
	}

	public static int fatorial(final int number) {
		int fatorial = 1;
		for(int i=2; i<=number; i++){
			fatorial *= i;
		}
		return fatorial;
	}
}
