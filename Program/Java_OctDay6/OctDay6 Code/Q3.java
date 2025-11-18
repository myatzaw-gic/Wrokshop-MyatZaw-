
enum TrafficLight {
    GREEN, YELLOW, RED
}

public class Q3 {
    public static void main(String[] args) {
        TrafficLight currentState = TrafficLight.GREEN;
        TrafficLight nextState;

        
        switch (currentState) {
            case GREEN:
                nextState = TrafficLight.YELLOW;
                break;
            case YELLOW:
                nextState = TrafficLight.RED;
                break;
            case RED:
                nextState = TrafficLight.GREEN;
                break;
            default:
                nextState = TrafficLight.RED; 
        }

        System.out.println("Current State: " + currentState);
        System.out.println("Next State: " + nextState);
    }
}
