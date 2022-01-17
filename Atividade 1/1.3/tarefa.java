import java.util.Scanner;

class Tarefa {
	public static void main(String[] args) {
		int number;
		Scanner in = new Scanner(System.in);
		
		System.out.printf("Digite um numero: ");
		number = in.nextInt();
		boolean primo = ehPrimo(number);
	
		System.out.printf("Numero digitado: " + number + ".\n");
		System.out.printf("Numero digitado eh primo? " + primo + ".\n");
	}
	
	public static boolean ehPrimo(final int number) {
		for(int i=2; i<number; i++)
			if(number%i == 0)
				return false;
		return true;
	}
}

