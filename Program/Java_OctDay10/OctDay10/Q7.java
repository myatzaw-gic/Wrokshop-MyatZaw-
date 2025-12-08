public class Q7 {
    public static void main(String[] args) {
        double orderAmount = 250;
        boolean isPremiumMember = true;
        double discount;

        discount = (orderAmount > 200) ? 0.10 : (orderAmount > 100) ? 0.05 : 0;
        if (isPremiumMember) discount += 0.05;

        System.out.println("Order Amount: $" + orderAmount);
        System.out.println("Premium Member: " + isPremiumMember);
        System.out.println("Total Discount: " + (discount * 100) + "%");
    }
}
 
