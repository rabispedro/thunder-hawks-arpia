//2) O Usuário pode informar 'N' numeros naturais, quando usuario informar -1 o programa exibe o MENOR  e o MAIOR
//Ex: INPUT => "Digite um valor / Digite um valor /" ... (valores=> 1,10,5,7 )  OUTPUT => "O Maior valor é 10 o Menor é 1"

package arpiaSegundaSemana;

import java.util.Scanner;

public class ExercicioDois {

	public static void main(String[] args) {
		
    Scanner scan = new Scanner  (System.in);
		
		int maior = 0;
		int menor = 10000000;
		int i = 0;
		
		while (true) {
	     i++;
	           
	           System.out.println("Digite o " + i + "º número natural: ");
	           int numerosDigitados = scan.nextInt();
	         
	           if(numerosDigitados == -1) break;        
	  
	           numerosDigitados = (numerosDigitados < -1) ? 0 : numerosDigitados;
		
	           maior = (numerosDigitados > maior) ? numerosDigitados : maior;
	          
	           
	           /*É a mesma coisa que: if (numerosDigitados > maior) {
	        	  maior = numerosDigitados; 
	           } else {
	        	 maior = maior;
	           }*/
	           
	           menor = (numerosDigitados < menor) ? numerosDigitados : menor;
	            
	  }
	        System.out.println("O menor número natural digitado foi " + menor + "!");
	  		System.out.println("O maior número natural digitado foi " + maior + "!");   
  }
	}