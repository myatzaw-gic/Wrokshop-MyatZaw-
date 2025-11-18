import java.util.Scanner;

public class Q1 {
    public static void main(String[] args) {
        // Correct credentials
        String correctUsername = "admin";
        String correctPassword = "123456";

        // Create a Scanner object to read input
        Scanner scanner = new Scanner(System.in);

        // Ask the user to enter username and password
        System.out.print("Enter username: ");
        String username = scanner.nextLine();

        System.out.print("Enter password: ");
        String password = scanner.nextLine();

        // Check credentials
        if (username.equals(correctUsername) && password.equals(correctPassword)) {
            System.out.println("Login successful");
        } else {
            System.out.println("Invalid credentials");
        }

        // Close the scanner
        scanner.close();
    }
}
