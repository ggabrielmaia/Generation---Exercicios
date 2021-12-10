package exerciciosJava1;

import java.util.Scanner;

public class Questão4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite o número: ");
		int a = entrada.nextInt();
		
		
		int par = a*a;
		
		double impar = Math.sqrt(a);
		
		if(a%2 == 0)
		{
			System.out.println("O número é par, e ao quadrado fica: "+par);
		}
		else
		{
			System.out.println("O número é impar, e a raiz é: "+impar);
		}
		
		

	}

}
