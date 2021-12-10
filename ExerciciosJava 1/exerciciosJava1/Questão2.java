package exerciciosJava1;

import java.util.Scanner;

public class Questão2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite o primeiro número: ");
		double a = entrada.nextDouble();
		
		Scanner entrada1 = new Scanner(System.in);
		System.out.println("Digite o primeiro número: ");
		double b = entrada.nextDouble();
		
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite o primeiro número: ");
		double c = entrada.nextDouble();
		
		if(a>b && a>c && b>c)
		{
		System.out.println("A ordem crescente é: "+ c + "\n" + b + "\n" + a);
		}
		else if(a>b && a>c && c>b)
		{
			System.out.println("A ordem crescente é: "+ b + "\n" + c + "\n" + c);
		}
		else if(b>a && b>c && a>c)
		{
			System.out.println("A ordem crescente é: "+ c + "\n" + a + "\n" + b);
		}
		else if(b>a && b>c && c>a)
		{
			System.out.println("A ordem crescente é: "+ a + "\n" + c + "\n" + b);
		}
		else if(c>a && c>b && a>b)
		{
			System.out.println("A ordem crescente é: "+ b + "\n" + a + "\n" + c);
		}
		else if(c>a && c>b && b>a)
		{
			System.out.println("A ordem crescente é:\n"+ a + "\n" + b + "\n" + c);
		}

}
}
