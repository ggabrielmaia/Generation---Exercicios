package exerciciosJava1;

import java.util.Scanner;

public class Quest�o4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite o n�mero: ");
		int a = entrada.nextInt();
		
		
		int par = a*a;
		
		double impar = Math.sqrt(a);
		
		if(a%2 == 0)
		{
			System.out.println("O n�mero � par, e ao quadrado fica: "+par);
		}
		else
		{
			System.out.println("O n�mero � impar, e a raiz �: "+impar);
		}
		
		

	}

}
