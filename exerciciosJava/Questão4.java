package exerciciosJava;



import java.util.Scanner;


public class Quest�o4 {
	
	public static void main(String[] args) {
		
		
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double a = entrada.nextDouble();
		
		Scanner entrada1 = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double b = entrada.nextDouble();
		
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite o primeiro n�mero: ");
		double c = entrada.nextDouble();

		double r = (a+b)*(a+b);
		double s = (b+c)*(b+c);
		double d = (r+s)/2;
		
		if(a < 0 || b < 0 || c < 0)
		System.out.println(" \nPor favor, digite apenas n�meros inteiros e positivos");
		else
		System.out.println( " \nA resposta �: " + d);
	}
	
	
   

}
