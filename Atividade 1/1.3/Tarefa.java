/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package harpiaprimos;
import java.util.Scanner;
/**
 *
 * @author carlito
 */
public class Primos {
    public static void main(String[] args){
        
        
        Scanner myObj = new Scanner(System.in);
        
        double numero;
       
        boolean Eounaoprimo;
        
        System.out.println("Digite um numero: ");
        numero = myObj.nextInt();
        
        
            
        
        Eounaoprimo=primo(numero);
        
        
        
        
        
        System.out.println("E primo ? "+(primo(numero)));    
        
        
            
        
        
        
        
        
        
        
    }
    
    
    public static boolean primo(double numero) 
    {
        
        double raiz;
        int i;
        if(numero%2==0)
        {
          return false;
        }
          
        raiz = Math.sqrt(numero);
         
        for(i=3;i<=raiz;i+=2)
        {   
            
            if(numero%i==0)
            {
                return false;
            }
        }
    
        return true;
     }
}
