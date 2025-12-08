import java.util.Random;

public class Q8 {

    // Simulated network operation
    public static boolean performNetworkOperation() {
        Random random = new Random();
        // Simulate success 30% of the time
        return random.nextInt(10) < 3;
    } 

    public static void main(String[] args) {
        final int maxRetries = 5;

        for (int attempt = 1; attempt <= maxRetries; attempt++) {
            System.out.println("Attempt " + attempt + "...");
            
            boolean success = performNetworkOperation();
            
            if (success) {
                System.out.println("Operation succeeded on attempt " + attempt + "!");
                break; // Exit loop if operation succeeds
            } else {
                System.out.println("Operation failed.");
                
                if (attempt < maxRetries) {
                    // Increasing delay before next attempt (exponential backoff)
                    int delay = attempt * 1000; // milliseconds
                    System.out.println("Retrying in " + delay + " ms...\n");
                    try {
                        Thread.sleep(delay);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    System.out.println("All attempts failed. Giving up.");
                }
            }
        }
    }
}
