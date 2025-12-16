import java.util.*;
import java.util.stream.*;
 
class Customer {
    private String name;
    private String country;

    public Customer(String name, String country) {
        this.name = name;
        this.country = country;
    }

    public String getName() {
        return name;
    }

    public String getCountry() {
        return country;
    }
}

class Order {
    private Customer customer;
    private double value;

    public Order(Customer customer, double value) {
        this.customer = customer;
        this.value = value;
    }

    public Customer getCustomer() {
        return customer;
    }

    public double getValue() {
        return value;
    }
}

public class Q4 {
    public static void main(String[] args) {
        // Create some sample customers
        Customer c1 = new Customer("Alice", "USA");
        Customer c2 = new Customer("Bob", "UK");
        Customer c3 = new Customer("Charlie", "USA");

        // Create a list of orders
        List<Order> orders = Arrays.asList(
            new Order(c1, 150.0),
            new Order(c2, 200.0),
            new Order(c3, 350.0),
            new Order(c1, 100.0)
        );

        // Specify the country to filter
        String country = "USA";

        // Use Stream API to calculate total value of orders from that country
        double totalValue = orders.stream()
            .filter(o -> o.getCustomer().getCountry().equals(country))
            .mapToDouble(Order::getValue)
            .sum();

        System.out.println("Total order value from " + country + ": " + totalValue);
    }
}
