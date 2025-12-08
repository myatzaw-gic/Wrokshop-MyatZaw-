import java.util.*;

public class Q2 {
    public static void main(String[] args) {
        String multiLineText = """
            Hello World    
            This is a test line    
            Java Programming   
            
            This line will not be processed
            """;

        // Split multi-line string into lines
        String[] lines = multiLineText.split("\\r?\\n");
        int index = 0;

        // Process lines until empty line is encountered
        while (index < lines.length && !lines[index].trim().isEmpty()) {
            String trimmedLine = lines[index].trim(); // remove leading and trailing whitespace
            System.out.println(trimmedLine);          // print or process the line
            index++;
        }

        System.out.println("Processing stopped at empty line.");
    }
}
