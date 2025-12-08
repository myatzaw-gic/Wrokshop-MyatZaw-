public class Q4 {
    public static boolean isValid(String cardNumber) {
        int sum = 0;
        boolean doubleDigit = false;

        for (int i = cardNumber.length() - 1; i >= 0; i--) {
            int digit = Character.getNumericValue(cardNumber.charAt(i));
            if (doubleDigit) {
                digit *= 2;
                if (digit > 9) digit -= 9; 
            }
            sum += digit;
            doubleDigit = !doubleDigit;
        }
 
        return sum % 10 == 0;
    }

    public static void main(String[] args) {
        String card = "4539578763621486"; // Example valid card
        System.out.println("Card valid? " + isValid(card));
    }
}
