import java.util.Scanner;
 
public class Q4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Create scanner for user input

        System.out.print("Enter your score: ");
        int score = scanner.nextInt(); // Read score from user
        String rank;

        // ✅ Using if-else if-else chain for score ranges
        if (score < 100) {
            rank = "Beginner";
        } else if (score < 500) {
            rank = "Intermediate";
        } else if (score < 1000) {
            rank = "Expert";
        } else {
            rank = "Master";
        }

        System.out.println("\nPlayer Score: " + score);
        System.out.println("Player Rank: " + rank);

        scanner.close(); // Close scanner
    }
}
  