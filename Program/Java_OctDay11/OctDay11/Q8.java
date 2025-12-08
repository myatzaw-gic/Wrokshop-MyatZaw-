import java.util.Iterator;
import java.util.List;

public class Q8 { 
    public static void main(String[] args) {
        // Example: using an iterator to simulate large dataset
        Iterator<Order> orders = getOrderStream(); 

        while (orders.hasNext()) {
            Order order = orders.next();
            processOrder(order);
        }

        System.out.println("All orders processed.");
    }

    private static Iterator<Order> getOrderStream() {
        // Simulated dataset
        List<Order> list = List.of(new Order(1), new Order(2), new Order(3));
        return list.iterator();
    }

    private static void processOrder(Order order) {
        System.out.println("Processing order: " + order.id);
    }
}

class Order {
    int id;
    Order(int id) { this.id = id; }
}

