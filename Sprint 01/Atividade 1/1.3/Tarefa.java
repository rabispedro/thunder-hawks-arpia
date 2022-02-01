import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		long numero;
		Scanner scanner = new Scanner(System.in);

		System.out.print("Digite um numero: ");
		numero = scanner.nextLong();

		System.out.println("Numero digitado: " + numero);
		System.out.println("Eh primo? " + primo(numero));
		scanner.close();
	}

	public static boolean primo(final long numero) {
		if(numero == 2) return true;

		if(numero%2 == 0) return false;

		double raiz = Math.sqrt(numero);

		for(long i=3; i<=raiz; i+=2)
			if(numero%i==0) return false;

		return true;
	}
}
