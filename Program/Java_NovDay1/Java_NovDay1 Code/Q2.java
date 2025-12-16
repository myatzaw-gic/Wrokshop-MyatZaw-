import java.util.Arrays;
import java.util.List;

public class Q2 {
    public static void main(String[] args) {

        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);

        int sum = numbers.stream()
                         .filter(n -> n % 2 == 0)      // keep only even numbers
                         .map(n -> n * n)              // square each number
                         .reduce(0, (a, b) -> a + b);  // sum all numbers

        System.out.println("Sum of squares of even numbers: " + sum);
    }
}

