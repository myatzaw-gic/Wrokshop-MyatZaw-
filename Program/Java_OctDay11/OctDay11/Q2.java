public class Q2 { 
    public static void main(String[] args) {
        int readings = 0;
        boolean error = false; 

        do {
            // Simulate reading data from sensor
            try {
                processSensorData();
                readings++;
            } catch (Exception e) {
                System.out.println("Error detected: " + e.getMessage());
                error = true;
            }
        } while (readings < 1000 && !error);

        System.out.println("Processing stopped. Total readings: " + readings);
    }

    public static void processSensorData() throws Exception {
        // Simulate random sensor error
        if (Math.random() < 0.001) {
            throw new Exception("Sensor malfunction");
        }
        // Simulate processing
    }
}
