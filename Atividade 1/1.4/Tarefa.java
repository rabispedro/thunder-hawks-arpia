import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		long number;
		Scanner in = new Scanner(System.in);

		System.out.printf("Digite um numero: ");
		number = in.nextLong();
	
		System.out.printf("Numero digitado: " + number + ".\n");
		System.out.printf("Fatorial deste numero: " + fatorial(number) + ".\n");
		in.close();
	}

	public static long fatorial(final long number) {
		long fatorial = 1;
		for(long i=2; i<=number; i++)
			fatorial *= i;

		return fatorial;
	}
}
