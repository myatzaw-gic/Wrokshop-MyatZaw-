import java.util.Scanner;

public class Q2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Ask user for a number
        System.out.print("Enter an integer: ");
        int num = input.nextInt();
 
        // Check divisibility condition
        if ((num % 2 == 0) && (num % 3 == 0) && !(num % 5 == 0)) {
            System.out.println(num + " is divisible by both 2 and 3, but not by 5.");
        } else {
            System.out.println(num + " does NOT meet the condition.");
        }
  
        input.close();
    }
}
