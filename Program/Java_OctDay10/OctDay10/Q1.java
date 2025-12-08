public class Q1 {

    
    public int countWords(String text) {
        if (text == null || text.trim().isEmpty()) {
            return 0; // Return 0 for null or empty strings
        }
        // Trim leading/trailing spaces and split by single space
        return text.trim().split(" ").length;
    } 
 
    // Main method to test the word counter
    public static void main(String[] args) {
        Q1 counter = new Q1();

        String[] testStrings = {
            "Hello world",
            "  Leading and trailing spaces  ",
            "SingleWord",
            "",
            "   ",
            null
        };

        for (String text : testStrings) {
            System.out.println("Text: \"" + text + "\" → Word count: " + counter.countWords(text));
        }
    }
}
