public class Q5 {

    public static void main(String[] args) {
        // Add shutdown hook
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            System.out.println("Performing cleanup before shutdown...");
            // Example cleanup tasks
            // close files, release resources, save state, etc.
        }));

        System.out.println("Application is running...");
        try {
            Thread.sleep(5000); // simulate work
        } catch (InterruptedException e) {
            e.printStackTrace(); 
        }

        System.out.println("Application is exiting...");
    }
}
