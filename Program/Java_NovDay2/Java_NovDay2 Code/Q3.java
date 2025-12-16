import java.util.*;
import java.util.stream.Collectors;

class User {
    private String name;
    private boolean premium;

    public User(String name, boolean premium) {
        this.name = name;
        this.premium = premium;
    }

    public boolean isPremium() {
        return premium;
    }

    public String getName() {
        return name;
    }
}

public class Q3 {
    public static void main(String[] args) {
        // Create a list of users
        List<User> users = Arrays.asList(
            new User("Alice", true),
            new User("Bob", false),
            new User("Charlie", true),
            new User("David", false),
            new User("Emma", true)
        );

    
        List<User> premiumUsers = users.stream()
                                       .filter(User::isPremium)
                                       .collect(Collectors.toList());

        // Print premium user names
        System.out.println("Premium Users:");
        premiumUsers.forEach(u -> System.out.println(u.getName()));
    }
}
