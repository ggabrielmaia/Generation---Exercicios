package exerciciosJava3;

public class Quest�o1 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
				
		int soma015;
		int[] a = new int [6];
		
		a[0]=1; a[1]=0; a[2]=5; a[3]=-2; a[4]=-5; a[5]=7;
		
		soma015=a[0]+a[1]+a[5];
		
		System.out.printf("\nA soma das posi��es A[0], A[1] e A[5] � de %d",soma015);
		
		a[3]=100;
		
		System.out.printf("\nPosi��o 1 do vetor A � de %d",a[0]);
		System.out.printf("\nPosi��o 2 do vetor A � de %d",a[1]);
		System.out.printf("\nPosi��o 3 do vetor A � de %d",a[2]);
		System.out.printf("\nPosi��o 4 do vetor A � de %d",a[3]);
		System.out.printf("\nPosi��o 5 do vetor A � de %d",a[4]);
		System.out.printf("\nPosi��o 6 do vetor A � de %d",a[5]);

}
}
