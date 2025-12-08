public class Q2 {
    // ✅ Secure: Read API key from environment variable
    private static final String API_KEY = System.getenv("API_KEY");

    public void authenticateUser(String username, String password) {
        if (API_KEY == null) {
            System.out.println("Error: API key not found in environment variables.");
            return;
        } 

        // Authentication logic (placeholder)
        System.out.println("Authenticating user: " + username);
        System.out.println("Using API key: " + API_KEY);
    }

    public static void main(String[] args) {
        Q2 service = new Q2();
        service.authenticateUser("JohnDoe", "password123");
    }
}
