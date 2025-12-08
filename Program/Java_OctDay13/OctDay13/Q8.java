import java.util.Scanner;

public class Q8 {

    // Method to check if a year is within 2010–2019
    public static boolean isWithinDecade(int year) {
        // Return true if the year is between 2010 and 2019 (inclusive)
        if (year >= 2010 && year <= 2019) {
            return true;
        } else {
            return false;
        }
    } 

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Ask user to enter a year
        System.out.print("Enter a year: ");
        int year = input.nextInt();

   
        if (isWithinDecade(year)) {
            System.out.println(year + " falls within the decade 2010–2019.");
        } else {
            System.out.println(year + " does NOT fall within the decade 2010–2019.");
        }

        input.close();
    }
}
