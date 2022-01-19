import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		long numero;
		Scanner myObj = new Scanner(System.in);

		System.out.print("Digite um numero: ");
		numero = myObj.nextLong();

		System.out.println("Numero digitado: " + numero);
		System.out.println("Eh primo? " + primo(numero));
		myObj.close();
	}

	public static boolean primo(final long numero) {
		if(numero%2 == 0) return false;

		double raiz = Math.sqrt(numero);

		for(long i=3; i<=raiz; i+=2)
			if(numero%i==0) return false;

		return true;
	}
}
