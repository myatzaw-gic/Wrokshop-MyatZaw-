
import java.util.Scanner;

public class Q6 {
    
    public static void main(String[] args) {
        int number;
    try (var scanner = new Scanner(System.in)) { 
        while (true) {
            System.out.print("Enter a positive integer: ");
            number = scanner.nextInt();
            if (number > 0) break;
            System.out.println("Invalid input! Try again.");
        }
    }


    }
}
