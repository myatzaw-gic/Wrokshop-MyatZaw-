import java.util.Date;

public class Q8 {
 
    // Method to log messages with different levels
    public void logMessage(String message, int level) {
        String logEntry = new Date().toString() + " - " + message;

        switch (level) { 
            case 1:
                System.out.println("INFO: " + logEntry);
                break;
            case 2:
                System.out.println("WARNING: " + logEntry);
                break;
            case 3:
                System.out.println("ERROR: " + logEntry);
                break;
            default:
                System.out.println("UNKNOWN: " + logEntry);
        }
    }

    // Main method to test the logMessage function
    public static void main(String[] args) {
        Q8 logger = new Q8();

        logger.logMessage("Application started successfully", 1);
        logger.logMessage("Low memory warning", 2);
        logger.logMessage("File not found error", 3);
        logger.logMessage("Invalid level test", 5);
    }
}
