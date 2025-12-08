import java.util.concurrent.atomic.AtomicInteger;

public class Q4 {

    // Thread-safe counter using AtomicInteger
    private AtomicInteger counter = new AtomicInteger(0);


    public void increment() {
        counter.incrementAndGet();
    } 
 
    public int getValue() {
        return counter.get();
    }

    public static void main(String[] args) {
        Q4 counter = new Q4();

 
        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        Thread t3 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        // Start all threads
        t1.start();
        t2.start();
        t3.start();

        // Wait for all threads to finish
        try {
            t1.join();
            t2.join();
            t3.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Print the final counter value
        System.out.println("Final Counter Value: " + counter.getValue());
    }
}
