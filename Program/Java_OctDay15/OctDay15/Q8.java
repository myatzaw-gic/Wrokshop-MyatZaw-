import java.util.*;
import java.util.stream.*;

public class Q8 { 

    // Method that returns a Stream of even numbers (memory-efficient)
    public static Stream<Integer> filterEvenNumbers(List<Integer> numbers) {
        return numbers.stream()
                      .filter(num -> num % 2 == 0);
    }
 
    public static void main(String[] args) {
        // Example list of integers
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

        // Get the filtered stream of even numbers
        Stream<Integer> evenNumbersStream = filterEvenNumbers(numbers);

        // Process the stream (for example, collect and print)
        List<Integer> evenNumbersList = evenNumbersStream.collect(Collectors.toList());

        System.out.println("Even numbers: " + evenNumbersList);
    }
}
