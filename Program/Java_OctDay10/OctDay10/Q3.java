import java.util.Random;

public class Q3 {

    public static void main(String[] args) {
        final int MAX_RETRIES = 5; // Maximum number of retry attempts
        int retryCount = 0;        // Current attempt count
        boolean connected = false; // Connection status

        Random random = new Random(); 

        // Retry until connected or max retries reached
        while (!connected && retryCount < MAX_RETRIES) {
            retryCount++;
            System.out.println("Attempt " + retryCount + ": Trying to connect...");

            // Simulate connection attempt (50% chance of success)
            connected = random.nextBoolean();

            if (connected) {
                System.out.println(" Connection established successfully! ");
            } else {
                System.out.println(" Connection failed. Retrying... ");
                try {
                    // Simulate delay before retry
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    System.out.println("Thread interrupted.");
                }
            }
        }

        // After loop ends
        if (!connected) {
            System.out.println("❌ Failed to connect after " + MAX_RETRIES + " attempts.");
        }
    }
}
