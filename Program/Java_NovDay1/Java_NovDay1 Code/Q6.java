import java.util.*;
import java.util.stream.Collectors;

// Simple Order class
class Order {
    private String orderId;
    private String customerId;
    private String status;

    public Order(String orderId, String customerId, String status) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.status = status;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public String getStatus() {
        return status;
    }
}

// Main class
public class Q6 {  
    public static void main(String[] args) {
        // Create a list of sample orders
        List<Order> orders = Arrays.asList(
                new Order("O001", "C101", "PENDING"),
                new Order("O002", "C102", "COMPLETED"),
                new Order("O003", "C103", "PENDING"),
                new Order("O004", "C104", "CANCELLED"),
                new Order("O005", "C105", "PENDING")
        );

        // ✅ Using Stream API and Lambda expressions
        List<String> pendingCustomerIds = orders.stream()
                .filter(o -> o.getStatus().equals("PENDING"))      // Keep only pending orders
                .map(Order::getCustomerId)                                  // Transform to customer IDs
                .collect(Collectors.toList());                              // Collect into a list

        // Print the result
        System.out.println("Customer IDs with PENDING orders: " + pendingCustomerIds);
    }
}
