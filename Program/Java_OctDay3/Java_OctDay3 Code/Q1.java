import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;

public class Q1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your password: ");
        String password = scanner.nextLine();
        scanner.close();

        ValidationResult result = validatePassword(password);

        if (result.isValid) {
            System.out.println("✅ Password is valid. Registration allowed!");
        } else {
            System.out.println("❌ Password does not meet the required criteria:");
            for (String msg : result.messages) {
                System.out.println(" - " + msg);
            }
        }
    }

    // Simple holder for validation result + messages
    static class ValidationResult {
        final boolean isValid;
        final List<String> messages;

        ValidationResult(boolean isValid, List<String> messages) {
            this.isValid = isValid;
            this.messages = messages;
        }
    }

    public static ValidationResult validatePassword(String password) {
        List<String> msgs = new ArrayList<>();

        if (password == null || password.isEmpty()) {
            msgs.add("Password must not be empty.");
            return new ValidationResult(false, msgs);
        }

        if (password.length() < 8) {
            msgs.add("At least 8 characters.");
        }

        boolean hasUpper = false;
        boolean hasLower = false;
        boolean hasDigit = false;

        for (char c : password.toCharArray()) {
            if (Character.isUpperCase(c)) hasUpper = true;
            if (Character.isLowerCase(c)) hasLower = true;
            if (Character.isDigit(c)) hasDigit = true;
        }

        if (!hasUpper) msgs.add("At least one uppercase letter.");
        if (!hasLower) msgs.add("At least one lowercase letter.");
        if (!hasDigit)  msgs.add("At least one digit.");

        return new ValidationResult(msgs.isEmpty(), msgs);
    }
}

