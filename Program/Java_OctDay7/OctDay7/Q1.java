public class Q1 {

 
    public static double calculateTotal(double[] prices, int[] quantities) {
        double total = 0;

    
        for (int i = 0; i < prices.length; i++) {
            total += prices[i] * quantities[i]; 
        } 

        return total; // return final total cost
    }

    public static void main(String[] args) {
        // Example arrays
        double[] prices = {10.5, 5.0, 2.75};
        int[] quantities = {2, 3, 1};

        // Call the method
        double totalCost = calculateTotal(prices, quantities);
   
        // Display result
        System.out.println("Total Cost = " + totalCost);
    }
}
