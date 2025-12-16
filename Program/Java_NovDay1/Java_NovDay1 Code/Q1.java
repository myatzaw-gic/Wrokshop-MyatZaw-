import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

// Employee class
class Employee {
    private int id;
    private String name;
    private int age;
    private double salary;

    // Constructor
    public Employee(int id, String name, int age, double salary) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.salary = salary;
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public int getAge() { return age; }
    public double getSalary() { return salary; }

    @Override
    public String toString() {
        return "Employee{" +
               "id=" + id +
               ", name='" + name + '\'' +
               ", age=" + age +
               ", salary=" + salary +
               '}';
    }
}

// Main class
public class Q1 {
    public static void main(String[] args) {

        // Sample list of employees
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee(101, "Alice", 28, 48000));
        employees.add(new Employee(102, "Bob", 35, 52000));
        employees.add(new Employee(103, "Charlie", 32, 60000));
        employees.add(new Employee(104, "David", 25, 45000));
        employees.add(new Employee(105, "Eve", 40, 70000));

        // Filter employees older than 30 with salary > 50000
        List<Employee> filteredEmployees = employees.stream()
                .filter(e -> e.getAge() > 30 && e.getSalary() > 50000)
                .collect(Collectors.toList());

        // Print the filtered employees
        System.out.println("Employees older than 30 with salary > 50000:");
        filteredEmployees.forEach(System.out::println);
    }
}
