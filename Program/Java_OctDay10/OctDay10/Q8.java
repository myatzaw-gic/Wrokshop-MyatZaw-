public class Q8 {
    public static void main(String[] args) {
        int temp = 12; // Example temperature
        giveClothingRecommendation(temp);
    } 

    public static void giveClothingRecommendation(int temp) {
        if (temp <= 0) {
            System.out.println("Heavy winter coat");
        } else if (temp <= 10) {
            System.out.println("Light jacket");
        } else if (temp <= 20) {
            System.out.println("Sweater");
        } else {
            System.out.println("T-shirt");
        }
    }
}
