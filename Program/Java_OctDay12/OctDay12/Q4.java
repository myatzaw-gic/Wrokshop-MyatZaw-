import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Q4 {
    public static void main(String[] args) {
        String filePath = "file.txt";

        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                // Process the line
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } 
    }
}
 