import java.util.Scanner;

public class Tarefa {
	public static void main(String[] args) {
		double pcGasolina, pcAlcool, calculoDiferenca;
		Scanner scanner = new Scanner(System.in);

		do{
			System.out.print("Informe o preco da Gasolina: ");
			pcGasolina = Double.parseDouble(scanner.next());
			
			if(pcGasolina <= 0)
			System.out.print("Valor invalido: numero digitado menor que 0.\n");
			
		}while(pcGasolina <= 0);

		do{
			System.out.print("Informe o preco do Alcool: ");
			pcAlcool = Double.parseDouble(scanner.next());
			
			if(pcAlcool <= 0)
			System.out.print("Valor invalido: numero digitado menor que 0.\n");
			
		}while(pcAlcool <= 0);

		calculoDiferenca = pcAlcool / pcGasolina;

		if(calculoDiferenca > 0.70)
			System.out.println(calculoDiferenca + " - Gasolina eh melhor!");
		else
			System.out.println(calculoDiferenca + " - Alcool eh melhor!");

		scanner.close();
	}
}
