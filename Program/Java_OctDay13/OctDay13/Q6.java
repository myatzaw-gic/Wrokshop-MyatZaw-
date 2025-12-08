public class Q6 {

    // Method to validate password
    public static boolean isValidPassword(String password) {
        // Regular expression for the password policy
        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$";

        // Return true if the password matches the pattern
        return password.matches(regex);
    }

    // Main method for testing
    public static void main(String[] args) {
        // Example test passwords
        String[] passwords = { 
            "Password123",   
            "password123",        
            "Pass12",      
            "MyPass2025"     
        };

        // Test each password
        for (String pwd : passwords) {
            if (isValidPassword(pwd)) {
                System.out.println(pwd + ": Valid password");
            } else {
                System.out.println(pwd + ": Invalid password");
            }
        }
    }
}
