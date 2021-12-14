package exerciciosJava3;

import java.util.Scanner;

public class Questão3 {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner (System.in);
		
		int[][] num = new int[3][3];
		int linha,coluna,contador=0;
		
		for(linha=0;linha<3;linha++)
		{
		for(coluna=0;coluna<3;coluna++)
		{
		System.out.println("\nDigite um número: ");
		num[linha][coluna]=leia.nextInt();
				
		if(num[linha][coluna]>10)
		{
		contador++;
		}
				
		}
		}
		System.out.println("No total, existem " + contador + " números maiores que 10 na matriz");
	}

}
