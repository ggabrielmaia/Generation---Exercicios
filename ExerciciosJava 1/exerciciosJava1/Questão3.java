package exerciciosJava1;

import java.util.Scanner;

public class Questão3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		

		Scanner entrada = new Scanner(System.in);
		
		String idade = "";
		System.out.println("Digite sua idade: ");
		int nota = entrada.nextInt();
		
		switch(nota) {
		case 18: case 19: case 20: case 21: case 22: case 23: case 24: case 25:
			idade = "Adulto";
			break;
		case 15: case 16: case 17:
			idade = "Juvenil";
			break;
		case 10: case 11: case 12: case 13: case 14:
			idade = "Infantil";
			break;
		default: 
			idade = "Não informado!";
		}
		
		System.out.println("Sua categoria é: " + idade);
	}

}
