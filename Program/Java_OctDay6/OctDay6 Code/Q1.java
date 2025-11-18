public class Q1 {
    private static int failedAttempts = 0;

    public static void allowLogin(String password) {
        String correctPassword = "123456";

        if (password.equals(correctPassword)) {
            System.out.println("Login successful!"); 
            failedAttempts = 0; // Reset on success
        } else {
            failedAttempts++;
            System.out.println("Incorrect password. Attempt " + failedAttempts);

            // ✅ Lock account if failedAttempts >= 3
            if (failedAttempts >= 3) {
                lockAccount();
            }
        } 
    }

    public static void lockAccount() {
        System.out.println("Account locked due to too many failed attempts!");
    }

    public static void main(String[] args) {
        allowLogin("pass1"); 
        allowLogin("pass2"); 
        allowLogin("pass3"); 
        allowLogin("123456"); 
    }
}
