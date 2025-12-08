public class Q5 {

    public static void main(String[] args) {
        
        int temperature = -5;      
        boolean isSnowing = true; 
       
        if (temperature < 0 && isSnowing) {
            System.out.println("It's below 0°C and snowing. Wear a heavy coat!");
        } else {
            System.out.println("No heavy coat needed.");
        }
    }
} 
