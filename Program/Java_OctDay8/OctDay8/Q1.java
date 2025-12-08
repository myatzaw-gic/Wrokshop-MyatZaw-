import java.util.*;

// Item class
class Item {
    private String name; 
    private double price;

    public Item(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public double getPrice() {
        return price;
    }
}
 
// Order class
class Order {
    private int orderId;
    private List<Item> items;

    public Order(int orderId, List<Item> items) {
        this.orderId = orderId;
        this.items = items;
    }

    public int getOrderId() {
        return orderId;
    }

    public List<Item> getItems() {
        return items;
    } 
}

// Main class
public class Q1 {
    public static void main(String[] args) {

        // Create some sample items
        List<Item> order1Items = Arrays.asList(
            new Item("Pen", 1.5),
            new Item("Notebook", 3.0),
            new Item("Eraser", 0.5)
        );

        List<Item> order2Items = Arrays.asList(
            new Item("Mouse", 15.0),
            new Item("Keyboard", 25.0)
        );

        // Create sample orders
        List<Order> orders = Arrays.asList(
            new Order(101, order1Items),
            new Order(102, order2Items)
        );

        // Process each order using forEach
        orders.forEach(order -> {
            double total = 0;

            // Calculate total for each order
            for (Item item : order.getItems()) {
                total += item.getPrice();
            }

            // Display result
            System.out.println("Order ID: " + order.getOrderId() +
                               " | Total Price: $" + total);
        });
    }
}
