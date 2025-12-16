import java.util.*;
import java.util.stream.Collectors;

public class Q5 {  

    public static List<String> processStrings(List<String> input) {
        return input.stream()
                // Filter out null or empty strings
                .filter(s -> s != null && !s.isEmpty())

                // Convert to uppercase
                .map(String::toUpperCase)
                
                // Sort in reverse (descending) order for better readability
                .sorted(Comparator.reverseOrder())
                
                // Collect the results into a List
                .collect(Collectors.toList());
    }

    public static void main(String[] args) {
        // Sample input list
        List<String> input = Arrays.asList("apple", "", "banana", null, "grape", "orange");

        // Process the strings
        List<String> result = processStrings(input);

        // Print the result
        System.out.println("Processed Strings: " + result);
    }
}
