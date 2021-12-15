package orientação.a.objetos;

public class cliente {
	
	//declaração dos atributos da classe 

	 private String nomeDoCliente; 
	 private String cpf; 
	 private String saldoEmConta; 
	 private int idade; 

	 //declaração do método construtor 

	 public cliente(String nomeDoCliente,int idade,String cpf,String saldoEmConta) 

	 { 
     this.nomeDoCliente = nomeDoCliente; 
	 this.cpf = cpf; 
	 this.saldoEmConta = saldoEmConta; 
	 this.idade = idade; 
	 } 

	 public cliente(String cpf) 
	
	 { 
     this.cpf = cpf; 
	 } 

	 //declaração dos demais métodos da classe 

	 public void imprimirInfo() 

	{ 
    System.out.println("\n"+nomeDoCliente+ " tem " + idade + " anos de idade" + ", seu cpf é: "+cpf+ 
    " e possui em sua conta "+saldoEmConta+ " reais");
    } 

	public String getnomeDoCliente() 
	
	{ 
    return nomeDoCliente; 
    } 
	

	public void setNomeProprietario(String nnomeDoCliente) 
	
	{ 
	this.nomeDoCliente = nomeDoCliente; 
	} 
	

	public String getCpf() 
	
	{ 
    return cpf; 
	} 

	 

	public void setModelo(String cpf)
	
	{ 
	this.cpf = cpf; 
	} 

	 

	public String getsaldoEmConta() 
	
	{ 
	return saldoEmConta; 
	} 

	public void setsaldoEmConta(String saldoEmConta) 
	
	{ 
	this.saldoEmConta = saldoEmConta; 
	} 

	 

	public int getIdade() 
	
	{ 
	return idade; 
	} 

	 

	public void setIdade(int idade) 
	
	{ 
	this.idade = idade; 
	}

	public void setnomeDoCliente(String string) {
		// TODO Auto-generated method stub
		
	} 
	
}
