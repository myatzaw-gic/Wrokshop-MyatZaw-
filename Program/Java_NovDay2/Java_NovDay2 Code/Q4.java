import java.util.*;
import java.util.stream.Collectors;

public class Q4 {
    public static void main(String[] args) {

        String text = "apple banana apple orange banana apple";
  
        Map<String, Long> wordCount = Arrays.stream(text.split(" "))
                                            .collect(Collectors.groupingBy(
                                                      w -> w,
                                                      Collectors.counting() ));

        // Print the word counts
        System.out.println("Word Counts:");
        wordCount.forEach((word, count) -> 
            System.out.println(word + " = " + count)
        );
    }
}
