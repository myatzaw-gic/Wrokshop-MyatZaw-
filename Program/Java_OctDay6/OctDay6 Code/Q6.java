
import java.util.Scanner;
 
public class Q6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter username: ");
        String username = scanner.nextLine(); 

        if (username.length() >= 3 && username.length() <= 20 &&
            username.matches("^[a-zA-Z0-9_]+$"))
             {
            System.out.println(username + " is valid.");
        } else {
            System.out.println(username + " is invalid.");
        }

        scanner.close();
    }
}
