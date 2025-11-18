import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Q5 {
    public static void main(String[] args) {

        try (BufferedReader reader = new BufferedReader(new FileReader("data.txt"))) {
            String line;


            while ((line = reader.readLine()) != null && !line.isEmpty()) {
                System.out.println(line);
            }

            System.out.println("End of reading process.");

        } catch (IOException e) {
            System.out.println("An error occurred while reading the file.");
            e.printStackTrace();
        }
    }
}
