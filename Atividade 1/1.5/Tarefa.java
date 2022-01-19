import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		double pcGasolina, pcAlcool, calculoDiferenca;
		Scanner scanner = new Scanner(System.in);

		System.out.print("Informe o preco da Gasolina: ");
		pcGasolina = Double.parseDouble(scanner.next());

		System.out.print("Informe o preco do Alcool: ");
		pcAlcool = Double.parseDouble(scanner.next());

		calculoDiferenca = pcAlcool / pcGasolina;

		if(calculoDiferenca > 0.70)
			System.out.println(calculoDiferenca + " - Gasolina eh melhor!");
		else
			System.out.println(calculoDiferenca + " - Alcool eh melhor!");

		scanner.close();
	}
}
