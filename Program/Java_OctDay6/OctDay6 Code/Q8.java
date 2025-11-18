
public class Q8 { 
    public static void main(String[] args) {
        int bookAge = 12; 
        String condition = "Good"; 
        String category; 

        if (condition.equalsIgnoreCase("Poor")) {
            category = "Restoration";
        } else if (bookAge > 10) {
            category = "Vintage";
        } else if (bookAge > 5) { 
            category = "Standard";
        } else {
            category = "New";
        }

        System.out.println("Book Age: " + bookAge);
        System.out.println("Condition: " + condition);
        System.out.println("Category: " + category);
    }
}
