package exercicosJava2;

import java.util.Scanner;

public class Quest�o6 {

	public static void main(String[] args) {
	
	Scanner leia = new Scanner(System.in);
		
	int numero,contador=0,somaDosNumeros=0;
	float media;
			
	System.out.println("\nInforme um n�mero ");
	numero=leia.nextInt();
	do
	{
	if(numero%3==0) 
	{
	contador++;
	somaDosNumeros+=numero;
	}
	System.out.println("\nInforme um n�mero ");
	numero=leia.nextInt();
	}
	while(numero!=0);
			
	media=(float)somaDosNumeros/contador;
	System.out.println("\nAo total, o usu�rio digitou "+contador+" numeros que s�o multiplos de 3, a soma total �"+somaDosNumeros+" e a m�dia final � "+media);
		}
	}
