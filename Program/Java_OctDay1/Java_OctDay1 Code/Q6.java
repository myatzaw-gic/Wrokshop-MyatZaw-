public class Q6 {

    // Method to find the first occurrence of target in array
    public static int findFirstOccurrence(int[] array, int target) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == target) {
                return i; // stop immediately when found
            }
        }
        return -1; // not found
    } 

    public static void main(String[] args) {
        // Example array
        int[] numbers = {5, 3, 7, 1, 9, 3, 2};
        
        // Target element to search
        int target = 3;

        // Call the method
        int index = findFirstOccurrence(numbers, target);

        // Print the result
        if (index != -1) {
            System.out.println("First occurrence of " + target + " is at index: " + index);
        } else {
            System.out.println(target + " not found in the array.");
        }
    }
}

