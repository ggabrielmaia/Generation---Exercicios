package orientação.a.objetos2;

public class Cachorro extends Animal {
	
	public Cachorro(String Nome, String Idade, String Som, String Correr) 
	
	{
		super(Nome, Idade, Som, Correr, Correr);
	}
	
	public void imprimirInfo() 

	{ 
		System.out.println("O cachorro se chama "+ getNome() +" e possui "+ getIdade()+ " anos de idade. " + "\nFaz som? " + getSom() + "\nSeu método principal de locomoção é: "+ getCorrer());
	}

}
