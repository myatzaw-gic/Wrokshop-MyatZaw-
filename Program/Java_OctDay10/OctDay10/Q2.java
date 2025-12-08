import java.util.Scanner;

public class Q2 {

    // Method using Option A: low → high
    public static String getRankLowToHigh(int score) {
        if (score <= 50) return "Bronze";
        else if (score <= 100) return "Silver";
        else if (score <= 150) return "Gold";
        else return "Platinum"; 
    }

    // Method using Option D: high → low
    public static String getRankHighToLow(int score) {
        if (score > 150) return "Platinum";
        else if (score > 100) return "Gold";
        else if (score > 50) return "Silver";
        else return "Bronze";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter player's score: ");
        int score = scanner.nextInt();

       
        String rankA = getRankLowToHigh(score);
        System.out.println("Rank (low→high method): " + rankA);


        String rankD = getRankHighToLow(score);
        System.out.println("Rank (high→low method): " + rankD);

        scanner.close();
    }
}
