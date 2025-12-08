import java.util.HashMap;
import java.util.Map;

public class Q7 {

    // Step 1: Create a private static volatile instance
    private static volatile Q7 instance;

    // Step 2: Internal cache data (for example, a simple key-value map)
    private final Map<String, Object> dataMap;

    // Step 3: Private constructor to prevent external instantiation
    private Q7() {
        dataMap = new HashMap<>();
    } 

    // Step 4: Public method to get the singleton instance (thread-safe + lazy-loaded)
    public static Q7 getInstance() {
        if (instance == null) { // First check (no locking)
            synchronized (Q7.class) {
                if (instance == null) { // Second check (inside synchronized block)
                    instance = new Q7();
                }
            }
        }
        return instance;
    }

    // Step 5: Public methods to access the cache
    public void put(String key, Object value) {
        synchronized (dataMap) {
            dataMap.put(key, value);
        } 
    }

    public Object get(String key) {
        synchronized (dataMap) {
            return dataMap.get(key);
        }
    }

    // Step 6: Demonstration in main method
    public static void main(String[] args) {
        // Retrieve singleton instance
        Q7 cache1 = Q7.getInstance();
        Q7 cache2 = Q7.getInstance();

        // Add data to cache
        cache1.put("user_101", "Alice");
        cache1.put("user_102", "Bob");

        // Retrieve data
        System.out.println("user_101: " + cache2.get("user_101"));
        System.out.println("user_102: " + cache2.get("user_102"));

        // Check if both references point to the same object
        System.out.println("Both cache instances are same: " + (cache1 == cache2));
    }
}
