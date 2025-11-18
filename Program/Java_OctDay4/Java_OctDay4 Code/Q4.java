public class Q4 {
    public static void main(String[] args) {
        int health = 100; // Starting health

        // Loop runs as long as health is greater than 0
        while (health > 0) {
            health -= 10; // Decrease health by 10 each loop
            System.out.println("Health: " + health);

            // Pause for a short time to simulate time passing
            try {
                Thread.sleep(500); // 500 milliseconds = 0.5 seconds
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        // When health reaches 0 or below, the game ends
        System.out.println("Game Over!");
    }
}
