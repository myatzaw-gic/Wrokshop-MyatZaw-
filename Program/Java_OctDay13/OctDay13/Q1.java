import java.util.Scanner;

public class Q1 { 
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your age: ");
       
        if (scanner.hasNextInt()) {
            int age = scanner.nextInt();


            if (age >= 18 && age <= 65) {
                System.out.println("Age is valid. You can register.");
            } else {
                System.out.println("Age is invalid. Registration denied.");
            }
        } else {
            System.out.println("Invalid input. Please enter a numeric age.");
        }

        scanner.close();
    }
}
