import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		double number;
		Scanner in = new Scanner(System.in);

    do {

		System.out.printf("Digite um numero: ");
		number = in.nextDouble();
	       
	  if(number < 0)
        System.out.print("Valor invalido: numero digitado menor que 0.\n");
    

	} while (number < 0);
	
		System.out.printf("Numero digitado: " + number + ".\n");
		System.out.printf("Fatorial deste numero: " + fatorial(number) + ".\n");
		in.close();
	}

	public static double fatorial(final double number) {
		double fatorial = 1;
		for(double i=2; i<=number; i++)
			fatorial *= i;

		return fatorial;
	}
}