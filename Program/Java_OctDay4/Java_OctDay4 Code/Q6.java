import java.util.Scanner;
import java.util.regex.Pattern;

public class Q6 {
    
    public static boolean isValidEmail(String email) {
    
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return Pattern.matches(emailRegex, email);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String email;
        int attempts = 0;
        int maxAttempts = 3;

        do {
            System.out.print("Enter your email: ");
            email = scanner.nextLine();
            attempts++;

            if (isValidEmail(email)) {
                System.out.println("Email is valid!");
                break; 
            } else {
                System.out.println("Invalid email. Try again.");
                if (attempts == maxAttempts) {
                    System.out.println("Maximum attempts reached. Exiting...");
                }
            }
        } while (attempts < maxAttempts);

        scanner.close();
    }
}

