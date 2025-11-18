public class Q8 {
    public static void main(String[] args) {
        String membershipLevel = "Silver";
        double orderAmount = 2000.0;
        double discount = 0.0;

     
        switch (membershipLevel) {
            case "Bronze":
                discount = 0.05 * orderAmount;
                break;
            case "Silver":
                discount = 0.10 * orderAmount;
                break;
            case "Gold":
                discount = 0.15 * orderAmount;
                break;
            default:
                discount = 0.0;
        }

        System.out.println("Membership Level: " + membershipLevel);
        System.out.println("Order Amount: $" + orderAmount);
        System.out.println("Discount Applied: $" + discount);
        System.out.println("Final Amount: $" + (orderAmount - discount));
    }
}
