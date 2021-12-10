package exerciciosJava;

import java.util.Scanner;

public class Questão1 {
	
	public static void main(String[] args) {
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("\nDigite quantos anos você tem:");
		int anos = entrada.nextInt();
		
		Scanner entrada1 = new Scanner(System.in);
		System.out.println("Digite os meses: ");
		int meses = entrada.nextInt();
		
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite os dias: ");
		int dias = entrada.nextInt();
		
		
		int diasCertos = (anos*365) + (meses*30) + dias;

		System.out.println("O total de dias que você viveu é: " + diasCertos);		
		
	}

}
