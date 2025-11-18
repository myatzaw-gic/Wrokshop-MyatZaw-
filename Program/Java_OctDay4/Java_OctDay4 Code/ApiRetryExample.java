import java.util.Random;

public class ApiRetryExample {

    public static void main(String[] args) {
        int retryCount = 0;
        boolean success = false;

        while (retryCount < 5 && !success) {
            System.out.println("Attempt #" + (retryCount + 1));
            success = callAPI();

            if (success) {
                System.out.println("API call succeeded!");
                break;
            } else {
                retryCount++;
                int delay = 1000 * retryCount; // increasing delay in milliseconds
                System.out.println("API call failed. Retrying in " + delay + " ms...\n");

                try {
                    Thread.sleep(delay); // wait before next attempt
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

        if (!success) {
            System.out.println("All attempts failed. Please try again later.");
        }
    }

    // Simulate API call: randomly returns true (success) or false (failure)
    private static boolean callAPI() {
        Random random = new Random();
        return random.nextBoolean(); // 50% chance of success
    }
}
