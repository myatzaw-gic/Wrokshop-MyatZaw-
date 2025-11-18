
import java.util.Scanner;

public class Q6 {
     
    public static void main(String[] args) {
    int choice;
    Scanner scanner = new Scanner(System.in);

do {
    System.out.println("Menu:");
    System.out.println("1. Option A");
    System.out.println("2. Option B");
    System.out.println("3. Exit");
    System.out.print("Enter your choice: ");
    choice = scanner.nextInt();

    switch(choice) {
        case 1:
            System.out.println("You selected Option A");
            break;
        case 2:
            System.out.println("You selected Option B");
            break;
        case 3:
            System.out.println("Exiting...");
            break;
        default:
            System.out.println("Invalid choice! Try again.");
    }

} while(choice != 3);  // Repeat until user selects Exit
scanner.close();
    }
}
