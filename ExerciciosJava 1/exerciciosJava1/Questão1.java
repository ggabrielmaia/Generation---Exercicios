package exerciciosJava1;

import java.util.Scanner;

public class Quest�o1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub]
		
	
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double a = entrada.nextDouble();
		
		Scanner entrada1 = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double b = entrada.nextDouble();
		
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double c = entrada.nextDouble();
		
		if(a>b && a>c)
		{
		System.out.println("O maior n�mero � o a: "+ a);
		}
		else if(b>a && b>c)
		{
			System.out.println("O maior n�mero � o b: "+b);
		}
		else if(c>a && c>b)
		{
			System.out.println("O maior n�mero � c: "+c);
		}
	}

}
