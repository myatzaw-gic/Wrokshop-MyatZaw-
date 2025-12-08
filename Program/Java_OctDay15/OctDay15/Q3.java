class  CounterThread  {

    private int counter = 0; // shared variable

    // ❌ Option A: Not thread-safe
    public void updateCounterA() {
        counter++;  
    } 

    // ✅ Option B: Thread-safe (method-level synchronization)
    public synchronized void updateCounterB() {
        counter++;
    }

    // ✅ Option C: Thread-safe (block-level synchronization)
    public void updateCounterC() {
        synchronized (this) {
            counter++;
        }
    }

    // ❌ Option D: Not thread-safe (static method, no synchronization)
    public static int staticCounter = 0;

    public static void updateCounterD() {
        staticCounter++;
    }

    // Method to get the counter value
    public int getCounter() {
        return counter;
    }
}

public class Q3 {

    public static void main(String[] args) {
        CounterThread example = new CounterThread();

        // Create multiple threads that update the counter
        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                // Change to updateCounterA(), B(), or C() to test each version
                example.updateCounterB(); // ✅ using the synchronized method (thread-safe)
            }
        });

        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                example.updateCounterB(); // ✅ same as above
            }
        });

        // Start both threads
        t1.start();
        t2.start();

        // Wait for both threads to finish
        try {
            t1.join();
            t2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Display the final counter value
        System.out.println("Final Counter Value: " + example.getCounter());
    }
}
