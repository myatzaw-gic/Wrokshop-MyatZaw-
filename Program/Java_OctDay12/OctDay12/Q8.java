import java.util.*;

public class Q8 { 

    // Method to find duplicates
    public static List<Integer> findDuplicates(List<Integer> numbers) {
        Map<Integer, Integer> frequencyMap = new HashMap<>();
        Set<Integer> duplicates = new HashSet<>();

     
        for (Integer num : numbers) {
            frequencyMap.put(num, frequencyMap.getOrDefault(num, 0) + 1);
        }

        for (Map.Entry<Integer, Integer> entry : frequencyMap.entrySet()) {
            if (entry.getValue() > 1) {
                duplicates.add(entry.getKey());
            }
        }

        // Convert set to list
        return new ArrayList<>(duplicates);
    }

    // Main method to test
    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(1, 2, 3, 2, 4, 5, 3, 3, 6, 7, 1);
        List<Integer> duplicates = findDuplicates(numbers);
        System.out.println("Duplicates: " + duplicates);
    }
}
