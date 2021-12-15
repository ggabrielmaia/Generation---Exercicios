package orientação.a.objetos;

import java.util.Scanner;

public class patinete {
	
	Scanner ler = new Scanner (System.in);
		 
		 private String modelo; 
		 private double preco; 
		 private double alturaGeral; 
		 private double diametroGeral; 
		 private String eletrico;

		 public patinete(String modelo,double preco,double alturaGeral,double diametroGeral) 

		 { 
	     this.modelo = modelo; 
		 this.preco = preco; 
		 this.alturaGeral = alturaGeral; 
		 this.diametroGeral = diametroGeral;
		 this.eletrico = eletrico;
		 } 

		 public patinete(String modelo) 
		
		 { 
	     this.modelo = modelo; 
		 } 

		 //declaração dos demais métodos da classe 

		public String getModelo() {
			return modelo;
		}

		public void setModelo(String modelo) {
			this.modelo = modelo;
		}

		public double getPreco() {
			return preco;
		}

		public void setPreco(double preco) {
			this.preco = preco;
		}

		public double getAlturaGeral() {
			return alturaGeral;
		}

		public void setAlturaGeral(double alturaGeral) {
			this.alturaGeral = alturaGeral;
		}

		public double getDiametroGeral() {
			return diametroGeral;
		}

		public void setDiametroGeral(double diametroGeral) {
			this.diametroGeral = diametroGeral;
		}

		public String getEletrico() {
			return eletrico;
		}

		public void setEletrico(String eletrico) {
			this.eletrico = eletrico;
		} 
		
		
		 public void imprimirInfo() 

			{ 
		    System.out.println("O modelo do patinete é "+modelo+", seu preço é de "+preco+"."+ "\nSuas dimensões são:\nAltura: "+alturaGeral+"\nComprimento: "+diametroGeral);
			}

		 
		 public double eletrico(double eletrico)
			{
				System.out.println("\nO patinete é eletrico? (Digite 1 para sim e 2 para não)");
				eletrico = ler.nextDouble();
				
				if(eletrico==1)
				{
					System.out.println("Parabéns! Obrigado por colaborar com nosso mundo e ultilizar o patinete elétrico como meio de transporte! Como prêmio, nós iremos te dar uma bateria nova.");
				}
				else
			    {
					System.out.println("Já pensou em usar um patinete elétrico como meio de transporte? Além de ser sustentável e ajudar o planeta, ainda é uma locomoção rápida e segura!");
			    }
			
				return eletrico;
			}
		 


}

		 

		 
		 
		 
		 
		   		 	
