import java.util.*;
import java.util.stream.Collectors;

public class Q3 {

    // Method to get unique and sorted strings
    public static List<String> getUniqueSortedList(List<String> inputList) {
        return inputList.stream()
                        .distinct()                   // remove duplicates
                        .sorted()                     // sort alphabetically
                        .collect(Collectors.toList()); // collect into a new list
    }

    public static void main(String[] args) {
  
        List<String> names = Arrays.asList("John", "Alice", "Bob", "Alice", "David", "Bob");

        List<String> result = getUniqueSortedList(names);

        System.out.println("Original list: " + names);    
        System.out.println("Unique & sorted list: " + result);
    }
}

