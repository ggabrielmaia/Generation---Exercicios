package exerciciosJava;

import java.util.Scanner;

public class Questão5 {
	
	public static void main(String[] args) {
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("\nDigite a nota um: ");
		double  nota1 = entrada.nextInt();
		
		Scanner entrada1 = new Scanner(System.in);
		System.out.println("Digite a nota dois: ");
		double nota2 = entrada.nextInt();
		
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite a nota três: ");
		double nota3 = entrada.nextInt();
		
		double notas = (((2*nota1)+(3*nota2)+(5*nota3))/(10));
		
		 if(nota1 <= 10 && nota2 <= 10 && nota3 <= 10 && nota1 >= 0 && nota2 >= 0 && nota3 >= 0)
	     System.out.println("\nA média das notas é: "+ notas);
	     else
	     System.out.println("Por favor, escreva uma nota válida, entre 0 e 10.");
		
		
	}

}
