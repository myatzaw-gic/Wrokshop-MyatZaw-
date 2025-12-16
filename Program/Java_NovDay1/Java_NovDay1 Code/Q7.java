import java.util.*;
import java.util.stream.Collectors;

public class Q7 {
    public static void main(String[] args) {
        // Create a list of employees
        List<Employee> employees = Arrays.asList(
            new Employee("Alice", 30, "HR"),
            new Employee("Bob", 25, "IT"),
            new Employee("Charlie", 35, "HR")
        );

        // Group employees by department and count them 
        Map<String, Long> departmentCount = employees.stream()
                .collect(Collectors.groupingBy(Employee::getDepartment,
                                               Collectors.counting()));

        // Print the result
        System.out.println(departmentCount);
    }
}

// Employee class definition
class Employee {
    private String name;
    private int age;
    private String department;

    // Constructor
    public Employee(String name, int age, String department) {
        this.name = name;
        this.age = age;
        this.department = department;
    }

    // Getter methods
    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getDepartment() {
        return department;
    }
}
