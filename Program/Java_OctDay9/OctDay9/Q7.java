import java.util.Random;

public class Q7 { 

    public static void main(String[] args) {
        Random random = new Random();
        int rollCount = 0;
        int diceValue;

        System.out.println("Starting the dice game...");

        do {
            diceValue = random.nextInt(6) + 1; // Roll a dice (1-6)
            rollCount++;
            System.out.println("Roll " + rollCount + ": " + diceValue);

            if (diceValue == 6) {
                System.out.println("Congratulations! You rolled a 6.");
                break;
            }
        } while (rollCount < 3);

        if (diceValue != 6) {
            System.out.println("Game over! You did not roll a 6 in 3 tries.");
        }
    }
}
