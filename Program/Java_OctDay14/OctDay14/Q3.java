import java.util.Scanner;

public class Q3 {

    
    public static long fibonacci(int n) {
        if (n <= 1) return n; // Base cases: Fib(0) = 0, Fib(1) = 1

        long a = 0; // Fib(0)
        long b = 1; // Fib(1)
        long fib = 0;

        for (int i = 2; i <= n; i++) {
            fib = a + b; // Compute current Fibonacci number
            a = b;       // Shift a to previous
            b = fib;     // Shift b to current
        }

        return fib;
    } 

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

   
        System.out.print("Enter n (nth Fibonacci number to compute): ");
        int n = input.nextInt();

        if (n < 0) {
            System.out.println("Error: n must be non-negative.");
        } else {
            long result = fibonacci(n);
            System.out.println("Fibonacci number F(" + n + ") = " + result);
        }

        input.close();
    }
}
