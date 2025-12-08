import java.util.Scanner;

public class Q1 {
     public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int correctNumber = 42; 
        int guess;
        boolean userWantsToQuit = false;

        do {
            System.out.print("Enter your guess (1-100) or 0 to quit: ");
            guess = scanner.nextInt();

            if (guess == 0) {
                userWantsToQuit = true;
                System.out.println("You chose to quit. Goodbye!");
            } else if (guess == correctNumber) {
                System.out.println("🎉 Correct! You guessed the number!");
            } else if (guess < correctNumber) {
                System.out.println("Too low! Try again.");
            } else {
                System.out.println("Too high! Try again.");
            }

        } while (guess != correctNumber && !userWantsToQuit);

        scanner.close();
    }
}
