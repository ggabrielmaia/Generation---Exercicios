package orienta��o.a.objetos2;

import java.util.Scanner;

import orienta��o.a.objetos.Empregado1;

public class testeAnimais {

	public static void main(String[] args) {
		
		Scanner ler = new Scanner(System.in);
		
		int animals;
		
		System.out.println("Escolha um animal: \n1 --- Cavalo  \n2 --- Cachorro  \n3 --- Pregui�a");
		animals=ler.nextInt();
		
		if(animals == 1)
		{
			Cavalo cavalo = new Cavalo ("Jhon","18","Sim","correr"); 
			cavalo.imprimirInfo();
		}
		else if(animals == 2)
		{
			Cachorro cachorro = new Cachorro ("Maike", "12", "Sim", "correr");
			cachorro.imprimirInfo();
		}
		else if(animals == 3)
		{
			Pregui�a pregui�a = new Pregui�a ("Theo", "7", "Sim", "subir em arvores");
			pregui�a.imprimirInfo();
		}
		
		
		
		
	}

}
