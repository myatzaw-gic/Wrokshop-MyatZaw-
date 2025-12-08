import java.util.Scanner;

public class Q4 {

    // Method to check if a string is a palindrome
    public static boolean isPalindrome(String s) {
        // Optional: ignore case and spaces
        s = s.replaceAll("\\s+", "").toLowerCase();

        int n = s.length();
        for (int i = 0; i < n / 2; i++) { 
         
            if (s.charAt(i) != s.charAt(n - i - 1)) {
                return false; 
            }
        }
        return true; // all characters matched
    }


    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str = input.nextLine();

        if (isPalindrome(str)) {
            System.out.println("\"" + str + "\" is a palindrome.");
        } else {
            System.out.println("\"" + str + "\" is NOT a palindrome.");
        }

        input.close();
    }
}
