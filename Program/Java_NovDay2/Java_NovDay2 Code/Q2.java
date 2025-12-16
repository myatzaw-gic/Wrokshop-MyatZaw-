import java.util.*;
import java.util.stream.*;

class Investment {
    private double value;

    public Investment(double value) {
        this.value = value;
    }

    public double getValue() {
        return value;
    }
}

public class Q2 {
    public static void main(String[] args) {
        // Create a list of investments
        List<Investment> investments = Arrays.asList(
            new Investment(1000.50),
            new Investment(2500.75),
            new Investment(1500.25),
            new Investment(3000.00)
        );

      
        double totalValue = investments.stream()
                                       .mapToDouble(Investment::getValue)
                                       .sum();


        System.out.println("Total Investment Value: $" + totalValue);
    }
}
