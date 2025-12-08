import java.util.stream.IntStream;

public class Q8 {

    public static long factorialFor(int n) {
        long result = 1;
        for (int i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }

    // Option B: Using while loop
    public static long factorialWhile(int n) {
        long result = 1;
        while (n > 1) {
            result *= n;
            n--;
        }
        return result;
    }

    // Option C: Using do-while loop
    public static long factorialDoWhile(int n) {
        long result = 1;
        if (n == 0) return 1; // handle 0! = 1
        do {
            result *= n;
            n--;
        } while (n > 1);
        return result;
    }

    // Option D: Using Java Streams (functional style)
    public static long factorialStream(int n) {
        return IntStream.rangeClosed(1, n)
                .reduce(1, (a, b) -> a * b);
    }

    // Main method to test all options
    public static void main(String[] args) {
        int n = 5;

        System.out.println("Factorial using for loop: " + factorialFor(n));
        System.out.println("Factorial using while loop: " + factorialWhile(n));
        System.out.println("Factorial using do-while loop: " + factorialDoWhile(n));
        System.out.println("Factorial using IntStream: " + factorialStream(n));
    }
}
   