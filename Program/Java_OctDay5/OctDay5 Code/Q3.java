import java.util.Scanner;

public class Q3 {
    public static void main(String[] args) {
        final String CORRECT_PASSWORD = "admin123";
        Scanner sc = new Scanner(System.in);
        boolean loggedIn = false;
 
        // ✅ Allow 3 attempts using a for loop
        for (int attempt = 1; attempt <= 3; attempt++) {
            System.out.print("Enter password: ");
            String input = sc.nextLine();

            if (input.equals(CORRECT_PASSWORD)) {
                System.out.println("Login successful!");
                loggedIn = true;
                break; // Exit loop if login succeeds
            } else {
                System.out.println("Incorrect password. Attempt " + attempt + " of 3.");
            }
        }
 
        if (!loggedIn) {
            System.out.println("Too many failed attempts. Account locked.");
        }

        sc.close();
    }
}
