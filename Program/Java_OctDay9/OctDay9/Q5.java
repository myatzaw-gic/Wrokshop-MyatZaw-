public class Q5 {

    // Method to find the maximum value in an array
    public int findMax(int[] arr) {
        if (arr == null || arr.length == 0) {
            throw new IllegalArgumentException("Array must not be null or empty");
        }

        int max = arr[0]; 
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i]; 
            }
        } 
        return max;
    }

    // Main method to test the findMax method
    public static void main(String[] args) {
        Q5 finder = new Q5();

        // Test array
        int[] numbers = {15, 42, 7, 99, 23, 56};

        // Find and print the maximum value
        int maxValue = finder.findMax(numbers);
        System.out.println("The maximum value in the array is: " + maxValue);
    }
}
