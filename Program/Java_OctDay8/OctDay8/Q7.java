import java.util.*;
 
class Task {
    private String name;
    private int level;

    public Task(String name, int level) {
        this.name = name;
        this.level = level;  
    }

    // Simulate processing a task
    public List<Task> process() {
        System.out.println("Processing task: " + name + " (Level " + level + ")");

        // Simulate generating new tasks
        List<Task> newTasks = new ArrayList<>();
        if (level < 2) { // only generate new tasks up to level 2
            newTasks.add(new Task(name + "-child1", level + 1));
            newTasks.add(new Task(name + "-child2", level + 1));
        }
        return newTasks;
    }
}

public class Q7 {
    public static void main(String[] args) {

        LinkedList<Task> tasks = new LinkedList<>();
        tasks.add(new Task("TaskA", 0));
        tasks.add(new Task("TaskB", 0));


        while (!tasks.isEmpty()) {

            Task current = tasks.removeFirst();

            List<Task> newTasks = current.process();

            tasks.addAll(newTasks);
        }

        System.out.println("All tasks have been processed!");
    }
}
