public class Q1 {

    public static void allowRegistration() {
        System.out.println("Registration allowed. Welcome!");
    }
 
    public static void denyRegistration() {
        System.out.println("Registration denied. You must be 18 or older.");
    }
 
    public static void main(String[] args) {
        int age = 17; 

        if (age >= 18) {
            allowRegistration();
        } else {
            denyRegistration();
        }
    }
}
