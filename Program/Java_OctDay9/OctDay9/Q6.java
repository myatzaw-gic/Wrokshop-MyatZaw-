public class Q6 {

    // Method to validate password
    public boolean isPasswordValid(String password) {
        // Check for null or minimum length
        if (password == null || password.length() < 8) {
            return false;
        }

        boolean hasUpperCase = false; 
        boolean hasLowerCase = false;
        boolean hasDigit = false;

        // Check each character in the password
        for (char c : password.toCharArray()) {
            if (Character.isUpperCase(c)) {
                hasUpperCase = true;
            } else if (Character.isLowerCase(c)) {
                hasLowerCase = true;
            } else if (Character.isDigit(c)) {
                hasDigit = true;
            }

            // Exit early if all conditions are met
            if (hasUpperCase && hasLowerCase && hasDigit) {
                return true;
            }
        }

        return false; // If any condition is not met
    }

    // Main method to test password validation
    public static void main(String[] args) {
        Q6 validator = new Q6();

        String[] testPasswords = {
            null,
            "",
            "short1A",
            "alllowercase123",
            "ALLUPPERCASE123",
            "Valid123",
            "AnotherValid1"
        };

        for (String password : testPasswords) {
            System.out.println("Password: " + password + " -> " 
                + validator.isPasswordValid(password));
        }
    }
}
