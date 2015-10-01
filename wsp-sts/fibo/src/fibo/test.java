package fibo;

public class test {
	
	public static long fibo( long n) {
		long j;
		if ( n <= 1) {
			j = n;
			System.out.println( " " + j + " ");
			return j;
		}
		j = fibo( n-1) + fibo( n-2);
		System.out.println( " " + j + " ");
		return j;
	}
	
	// 
	
	public static void main( String[] args) {
		System.out.println( fibo (10));
	}
	
	
}
