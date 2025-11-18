public class Q2 {
    public static void triggerAlert() {
        System.out.println("ALERT! Temperature out of safe range!");
    }

    public static void main(String[] args) {
        double temperature = -22;


        if (temperature > -5 || temperature < -20) {
            triggerAlert();
        } else {
            System.out.println("Temperature is within safe range.");
        }
    }
}
