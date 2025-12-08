public class Q6 {

    public static String categorizeProduct(double price) {
        if (price < 50) {
            return "Budget";
        } else if (price <= 200) {
            return "Mid-range";
        } else {
            return "Premium";
        }
    } 

    public static void main(String[] args) {
        System.out.println(categorizeProduct(30));   
        System.out.println(categorizeProduct(150));  
        System.out.println(categorizeProduct(250));  
    }
}
