public class Q6 {
 
    // Method to process comma-separated input
    public static void processInput(String input) {
        if (input != null) {
            // Use split(",", -1) to keep trailing empty strings
            String[] parts = input.split(",", -1);

            // Loop through array safely
            for (int i = 0; i < parts.length; i++) {
                // Check for null before trimming
                System.out.println(parts[i] != null ? parts[i].trim() : "");
            }
        } else {
            System.out.println("Input is null");
        }
    }
 
    public static void main(String[] args) {
        // Test cases
        String input1 = "apple,banana,cherry";
        String input3 = null;

        System.out.println("Processing input1:");
        processInput(input1);
        System.out.println("\nProcessing input3:");
        processInput(input3);


    }
}
