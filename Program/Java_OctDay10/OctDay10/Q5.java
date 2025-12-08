public class Q5 {
    public static void main(String[] args) {
        int temperature = 20;   
        int desiredTemp = 22;

        if (temperature < desiredTemp) {
            turnOnHeating();
        } else if (temperature > desiredTemp) {
            turnOnCooling();
        } else {
            maintainTemperature();
        }
    } 

    static void turnOnHeating() {
        System.out.println("Heating system ON. warming up...");
    }

    static void turnOnCooling() {
        System.out.println("Cooling system ON. lowering temperature...");
    }

    static void maintainTemperature() {
        System.out.println("Temperature stable. maintaining current state.");
    }
}
