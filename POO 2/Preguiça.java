package orienta��o.a.objetos2;

public class Pregui�a extends Animal {
	
	
	public Pregui�a(String Nome, String Idade,String Som, String subirEmArvores)

	{
		
		super(Nome, Idade, Som, subirEmArvores, subirEmArvores);
		
	}
	
	public void imprimirInfo() 

	{ 
		System.out.println("A pregui�a se chama "+ getNome() +" e possui "+ getIdade()+ " anos de idade." + "\nFaz som? " + getSom() + "\nSeu m�todo principal de locomo��o �: "+ getSubirEmArvores());
	}
	
}
