package orientação.a.objetos2;

public class Animal {
	
	private String Nome; 

	private String Idade; 

	private String Som; 

	private String Correr; 

	private String subirEmArvores; 
	
	
	public Animal(String Nome,String Idade,String Som,String Correr,String subirEmArvores)
	{
		this.Nome = Nome;
		this.Idade = Idade;
		this.Som = Som;
		this.Correr = Correr;
		this.subirEmArvores = subirEmArvores;
	}


	public String getNome() {
		return Nome;
	}


	public void setNome(String nome) {
		Nome = nome;
	}


	public String getIdade() {
		return Idade;
	}


	public void setIdade(String idade) {
		Idade = idade;
	}


	public String getSom() {
		return Som;
	}


	public void setSom(String som) {
		Som = som;
	}


	public String getCorrer() {
		return Correr;
	}


	public void setCorrer(String correr) {
		Correr = correr;
	}


	public String getSubirEmArvores() {
		return subirEmArvores;
	}


	public void setSubirEmArvores(String subirEmArvores) {
		this.subirEmArvores = subirEmArvores;
	}
	
	

	

}
