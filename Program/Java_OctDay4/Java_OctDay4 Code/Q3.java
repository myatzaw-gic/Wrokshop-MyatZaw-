import java.util.Scanner;

public class Q3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int choice;

        // Display menu options
        System.out.println("===== MENU =====");
        System.out.println("1. Option 1");
        System.out.println("2. Option 2");
        System.out.println("3. Option 3");
        System.out.println("4. Option 4");
        System.out.println("5. Option 5");
        System.out.println("================");

        // Ask user for input
        System.out.print("Enter your choice (1-5): ");
        choice = scanner.nextInt();

        // Handle user input using switch-case
        switch (choice) {
            case 1:
                System.out.println("Option 1 selected");
                break;
            case 2:
                System.out.println("Option 2 selected");
                break;
            case 3:
                System.out.println("Option 3 selected");
                break;
            case 4:
                System.out.println("Option 4 selected");
                break;
            case 5:
                System.out.println("Option 5 selected");
                break;
            default:
                System.out.println("Invalid choice");
        }

        // Close the scanner
        scanner.close();
    }
}
