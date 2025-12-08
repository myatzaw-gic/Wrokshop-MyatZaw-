public class Q7 {

    // Method to validate email address
    public static boolean isValidEmail(String email) {
        // Regular expression for a basic email format
        String regex = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";

        // Return true if the email matches the pattern
        return email.matches(regex);
    }

    // Main method for testing
    public static void main(String[] args) {
        // Example email addresses to test
        String[] emails = {
            "john.doe@gmail.com",    
            "user_123@company.co",   
            "invalidemail.com",      
            "abc@xyz",               
            "user@domain.c",         
            "user@@domain.com",     
            "john.doe@domain.comm"
        }; 

        // Test each email and print the result
        for (String email : emails) {
            if (isValidEmail(email)) {
                System.out.println(email + ": Valid email");
            } else {
                System.out.println(email + ": Invalid email");
            }
        }
    }
}
