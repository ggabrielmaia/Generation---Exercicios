package exercicosJava2;

import java.util.Scanner;

public class Questão6 {

	public static void main(String[] args) {
	
	Scanner leia = new Scanner(System.in);
		
	int numero,contador=0,somaDosNumeros=0;
	float media;
			
	System.out.println("\nInforme um número ");
	numero=leia.nextInt();
	do
	{
	if(numero%3==0) 
	{
	contador++;
	somaDosNumeros+=numero;
	}
	System.out.println("\nInforme um número ");
	numero=leia.nextInt();
	}
	while(numero!=0);
			
	media=(float)somaDosNumeros/contador;
	System.out.println("\nAo total, o usuário digitou "+contador+" numeros que são multiplos de 3, a soma total é"+somaDosNumeros+" e a média final é "+media);
		}
	}
