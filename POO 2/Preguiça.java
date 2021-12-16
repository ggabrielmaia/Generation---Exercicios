package orientação.a.objetos2;

public class Preguiça extends Animal {
	
	
	public Preguiça(String Nome, String Idade,String Som, String subirEmArvores)

	{
		
		super(Nome, Idade, Som, subirEmArvores, subirEmArvores);
		
	}
	
	public void imprimirInfo() 

	{ 
		System.out.println("A preguiça se chama "+ getNome() +" e possui "+ getIdade()+ " anos de idade." + "\nFaz som? " + getSom() + "\nSeu método principal de locomoção é: "+ getSubirEmArvores());
	}
	
}
