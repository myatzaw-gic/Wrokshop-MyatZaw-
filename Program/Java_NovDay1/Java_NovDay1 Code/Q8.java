import java.util.*;
import java.util.stream.Collectors;

class SensorReading {
    private long timestamp;
    private double value;

    // Constructor
    public SensorReading(long timestamp, double value) {
        this.timestamp = timestamp;
        this.value = value;
    }

    // Getters
    public long getTimestamp() {
        return timestamp;
    }

    public double getValue() {
        return value;
    }
}
 
public class Q8 {

    // Option A: Using mapToDouble() and average()
    public static double getAverageInRangeOptionA(List<SensorReading> readings, long startTime, long endTime) {
        return readings.stream()
                       .filter(r -> r.getTimestamp() >= startTime && r.getTimestamp() <= endTime)
                       .mapToDouble(SensorReading::getValue)
                       .average()
                       .orElse(0.0); // return 0.0 if no readings in range
    }

    // Option D: Using Collectors.averagingDouble()
    public static double getAverageInRangeOptionD(List<SensorReading> readings, long startTime, long endTime) {
        return readings.stream()
                       .filter(r -> r.getTimestamp() >= startTime && r.getTimestamp() <= endTime)
                       .collect(Collectors.averagingDouble(SensorReading::getValue));
    }

    public static void main(String[] args) {
        // Sample sensor readings
        List<SensorReading> readings = Arrays.asList(
            new SensorReading(1000, 25.5),
            new SensorReading(2000, 30.0),
            new SensorReading(3000, 28.0),
            new SensorReading(4000, 32.5)
        );

        long startTime = 1500;
        long endTime = 3500;

        // Calculate average using Option A
        double averageA = getAverageInRangeOptionA(readings, startTime, endTime);
        System.out.println("Average (Option A): " + averageA);

        // Calculate average using Option D
        double averageD = getAverageInRangeOptionD(readings, startTime, endTime);
        System.out.println("Average (Option D): " + averageD);
    }
}
