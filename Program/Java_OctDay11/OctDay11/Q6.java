import java.util.LinkedList;
import java.util.Queue;

public class Q6 {
    public static void main(String[] args) {
        Queue<Integer> floorRequests = new LinkedList<>();
        floorRequests.add(3);
        floorRequests.add(7);
        floorRequests.add(1); 
 
        int currentFloor = 1;

        while (!floorRequests.isEmpty()) {
            int nextFloor = floorRequests.poll(); // get next request

            if (nextFloor > currentFloor) {
                System.out.println("Going up to floor " + nextFloor);
            } else if (nextFloor < currentFloor) {
                System.out.println("Going down to floor " + nextFloor);
            } else {
                System.out.println("Already on floor " + nextFloor);
            }

            currentFloor = nextFloor;
        }

        System.out.println("No more requests. Elevator is idle.");
    }
}
