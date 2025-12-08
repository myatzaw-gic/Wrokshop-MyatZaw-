import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Q7 {
    private static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern(DATE_FORMAT);

    // Thread-safe logging method
    public void log(String message) {
        String timestamp = LocalDateTime.now().format(formatter);
        System.out.println(timestamp + ": " + message);
    }
 
    public static void main(String[] args) {
        Q7 logger = new Q7();


        ExecutorService executor = Executors.newFixedThreadPool(10);

        // Submit multiple log tasks concurrently
        for (int i = 0; i < 100; i++) {
            int finalI = i;
            executor.submit(() -> logger.log("Test message " + finalI));
        }

        executor.shutdown();
    }
}
