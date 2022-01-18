package com.br.exercicio15;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		double pcGasolina = 0;
		double pcAlcool = 0;
		double calculoDiferenca = 0;
		
		System.out.println("Informe o preço da Gasolina:");
		pcGasolina = Double.parseDouble(scanner.next());
		
		System.out.println("Informe o preço do Alcool:");
		pcAlcool = Double.parseDouble(scanner.next());
		
		calculoDiferenca = pcAlcool / pcGasolina;
		
		if (calculoDiferenca >= 0.70) {
			System.out.println(calculoDiferenca + " - Gasolina é melhor!");
		} else {
			System.out.println(calculoDiferenca + " - Álcool é melhor!");
		}
		
		scanner.close();
	}

}
