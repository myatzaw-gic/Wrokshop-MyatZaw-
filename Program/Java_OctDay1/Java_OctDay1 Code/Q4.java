import java.util.regex.Pattern;

public class Q4 {

    // Validate email using regex
    public static boolean validateEmail(String email) {
        if (email == null || email.isEmpty()) {
            return false; 
        }
        // Simple email pattern
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return Pattern.matches(emailRegex, email);
    }

    // Validate phone number (example: must be 10 digits)
    public static boolean validatePhoneNumber(String phone) {
        if (phone == null || phone.isEmpty()) {
            return false;
        }
        // Allow only digits, length 10
        String phoneRegex = "^[0-9]{10}$";
        return Pattern.matches(phoneRegex, phone);
    }

    // Example main method to test

    public static void main(String[] args) {
        System.out.println(validateEmail("test@example.com"));     // true
        System.out.println(validateEmail("invalid-email"));         // false
        System.out.println(validatePhoneNumber("0912345678"));      // true
        System.out.println(validatePhoneNumber("12345"));           // false
    }
}
