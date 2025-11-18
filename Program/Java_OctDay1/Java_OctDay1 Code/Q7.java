public class Q7 {
    private static Q7 instance; // single instance

    private Q7() {} // private constructor prevents others from creating new objects

    public static Q7 getInstance() { // provides access to the single instance
        if (instance == null) {
            instance = new Q7(); // create instance if not created
        }
        return instance;
    } 

    public void log(String message) {
        System.out.println(message);
    }

    public static void main(String[] args) {
        Q7 logger = Q7.getInstance();
        logger.log("This is a log message.");
    }
}
