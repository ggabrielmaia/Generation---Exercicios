package orienta��o.a.objetos2;

public class Cavalo extends Animal {
	
	
	public Cavalo(String Nome, String Idade,String Som, String Correr)

	{
		
		super(Nome, Idade, Som, Correr, Correr);
		
	}
	
	public void imprimirInfo() 

	{ 
		System.out.println("O cavalo se chama "+ getNome() +" e possui "+ getIdade()+ " anos de idade." + "\nFaz som? " +  getSom() + "\nSeu m�todo principal de locomo��o �: "+ getCorrer());
	}
	
}