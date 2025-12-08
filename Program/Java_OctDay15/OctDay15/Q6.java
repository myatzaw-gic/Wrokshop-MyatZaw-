public class Q6 {

    // Method to calculate total price including discount
    public double calculateTotalPrice(double basePrice, int quantity, boolean isPreferredCustomer) {
        double total = basePrice * quantity;

        // Apply 10% discount only if both preferred AND total > 1000
        if (isPreferredCustomer && total > 1000) {
            total -= total * 0.1;  // 10% discount
        } 
        // Apply 5% discount if total > 500 (for non-preferred customers)
        else if (total > 500) {
            total -= total * 0.05; // 5% discount
        }
  
        return total;
    }

    // Main method for testing
    public static void main(String[] args) {
        Q6 calculator = new Q6();

        // Test cases
        double price1 = calculator.calculateTotalPrice(200, 6, false);  // total = 1200 → 5% discount
        double price2 = calculator.calculateTotalPrice(250, 5, true);   // total = 1250 → 10% discount
        double price3 = calculator.calculateTotalPrice(100, 4, true);   // total = 400 → no discount
        double price4 = calculator.calculateTotalPrice(300, 4, false);  // total = 1200 → 5% discount

        // Print results
        System.out.println("Order 1 (non-preferred): " + price1);
        System.out.println("Order 2 (preferred, >1000): " + price2);
        System.out.println("Order 3 (preferred, <1000): " + price3);
        System.out.println("Order 4 (non-preferred, >1000): " + price4);
    }
}
