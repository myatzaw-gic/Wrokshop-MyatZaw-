import java.util.Scanner;

public class Q6 {  
  
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean isValidInput;
        String input; 

        // Do-while loop ensures at least one prompt
        do {
            System.out.print("Enter a number between 1 and 10: ");
            input = scanner.nextLine();

            // Validate input
            isValidInput = validateInput(input);

            if (!isValidInput) {
                System.out.println("Invalid input. Please try again.\n");
            }

        } while (!isValidInput);

        System.out.println("You entered a valid input: " + input);
        scanner.close();
    }

    // Method to check if input is a number between 1 and 10
    private static boolean validateInput(String input) {
        try {
            int number = Integer.parseInt(input);
            return number >= 1 && number <= 10;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}

