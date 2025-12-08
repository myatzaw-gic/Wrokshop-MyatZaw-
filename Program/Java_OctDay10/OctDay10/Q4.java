import java.util.*;
import java.util.stream.Stream;

public class Q4 {

    // Method: returns a Stream of even numbers (memory-efficient)
    public static Stream<Integer> filterEvenNumbers(List<Integer> numbers) {
        // Convert list to stream and filter even numbers only
        return numbers.stream()
                      .filter(num -> num % 2 == 0);
    }
 
    public static void main(String[] args) {
        // Example: large list of numbers
        List<Integer> numbers = new ArrayList<>();

        // Generate 1 million random numbers
        for (int i = 1; i <= 1_000_000; i++) {
            numbers.add(i);
        } 

        // Get Stream of even numbers
        Stream<Integer> evenStream = filterEvenNumbers(numbers);

        // Display first 10 even numbers
        System.out.println("First 10 even numbers:");
        evenStream.limit(10).forEach(System.out::println);

        
    }
}
