public class Q8 { 
    public static void main(String[] args) {
       int maxRetries = 3;
    int attempt = 0;
    boolean success = false;

while (attempt < maxRetries && !success) {
    attempt++;
    try {
        // Call API
        callAPI();
        success = true; // if no exception, mark success
        System.out.println("API call succeeded on attempt " + attempt);
    } catch (Exception e) {
        System.out.println("API call failed on attempt " + attempt);
    }
}

if (!success) {
    System.out.println("API call failed after " + maxRetries + " attempts.");
}

    }

    public static void callAPI() throws Exception {
    // Simulate API failure randomly
    if (Math.random() < 0.5) {
        throw new Exception("Simulated API failure");
    }
    // Otherwise, do nothing (API succeeded)
}

}
