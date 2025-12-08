public class Q4 {

    public static void main(String[] args) {
        int rows = 5;
        int cols = 5; 

        // Character starting position
        int row = 0;
        int col = 0;
 
        // Obstacle position 
        int obstacleRow = 2;
        int obstacleCol = 3;

        boolean reachedEdge = false;
        boolean hitObstacle = false;

        // Movement direction: true = moving right, false = moving left
        boolean movingRight = true;

        while (!reachedEdge && !hitObstacle) {
            System.out.println("Character at: (" + row + ", " + col + ")");

            // Check for obstacle
            if (row == obstacleRow && col == obstacleCol) {
                hitObstacle = true;
                System.out.println("Character hit an obstacle at: (" + row + ", " + col + ")");
                break;
            }

            // Move character
            if (movingRight) {
                col++;
                if (col >= cols - 1) { // reached right edge
                    movingRight = false;
                    row++;
                    if (row >= rows) {
                        reachedEdge = true;
                        System.out.println("Character reached the bottom edge at: (" + row + ", " + col + ")");
                        break;
                    }
                }
            } else {
                col--;
                if (col <= 0) { // reached left edge
                    movingRight = true;
                    row++;
                    if (row >= rows) {
                        reachedEdge = true;
                        System.out.println("Character reached the bottom edge at: (" + row + ", " + col + ")");
                        break;
                    }
                }
            }
        }

        System.out.println("Movement ended.");
    }
}
