import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
  
public class Q1 {

    // Method to process data: convert each string to uppercase
    public static List<String> processData(String[] data) {
        List<String> result = new ArrayList<>();
        for (String item : data) {
            result.add(item.toUpperCase());
        }
        return result;  
    } 
 
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        // Ask user how many strings to process
        System.out.print("Enter number of strings: ");
        int n = input.nextInt();
        input.nextLine(); // consume newline

        String[] data = new String[n];

        // Read strings from user
        for (int i = 0; i < n; i++) {
            System.out.print("Enter string " + (i + 1) + ": ");
            data[i] = input.nextLine();
        }

        // Process the data
        List<String> result = processData(data);

        // Print the results
        System.out.println("\nProcessed Data (Uppercase):");
        for (String s : result) {
            System.out.println(s);
        }

        input.close();
    }
}
