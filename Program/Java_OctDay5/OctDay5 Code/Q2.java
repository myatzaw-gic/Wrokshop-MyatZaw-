public class Q2 {   
    public static void main(String[] args) {
        int temperature = 28; // Example temperature

        if (temperature < 0) {
            System.out.println("Freezing");
        } else if (temperature <= 15) {
            System.out.println("Cold"); 
        } else if (temperature <= 30) {
            System.out.println("Warm");
        } else {
            System.out.println("Hot");
        }
    }
}
