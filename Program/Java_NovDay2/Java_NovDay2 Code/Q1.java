import java.util.*;
import java.util.stream.*;

class Order {
    private int id;
    private double total;
    private double discount;

    // Constructor
    public Order(int id, double total) {
        this.id = id;
        this.total = total;
        this.discount = 0.0;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public double getTotal() {
        return total;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", total=" + total +
                ", discount=" + discount +
                '}';
    }
}

public class Q1 {
    public static void main(String[] args) {

        // Sample list of orders
        List<Order> orders = Arrays.asList(
                new Order(1, 50.0),
                new Order(2, 150.0),
                new Order(3, 250.0),
                new Order(4, 90.0)
        );

        orders.stream()
              .filter(order -> order.getTotal() > 100)
              .forEach(order -> order.setDiscount(0.1));

        // Print results
        System.out.println("Orders after applying discount:");
        orders.forEach(System.out::println);
    }
}
