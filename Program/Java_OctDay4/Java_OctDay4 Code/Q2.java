
import java.util.Scanner;

public class Q2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Ask how many numbers the user wants to enter
        System.out.print("Enter how many numbers you want to check: ");
        int number = scanner.nextInt();

    // Process each number
            

            if (number > 0) {
                System.out.println(number + " is Positive");
            } else if (number < 0) {
                System.out.println(number + " is Negative");
            } else {
                System.out.println(number + " is Zero");
            }
        

        // Close the scanner
        scanner.close();
    }
}
