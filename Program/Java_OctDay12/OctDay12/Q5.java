public class Q5 {
 
   
    public static boolean isPalindrome(String s) {
        // Optional: ignore case and spaces
        s = s.replaceAll("\\s+", "").toLowerCase();

        int length = s.length();
        for (int i = 0; i < length / 2; i++) {
            if (s.charAt(i) != s.charAt(length - 1 - i)) {
                return false; 
            }
        }
        return true; 
    }
 
    public static void main(String[] args) {
        String[] testStrings = {
            "racecar",
            "hello",
            "Madam",
            "A man a plan a canal Panama"
        };

        for (String str : testStrings) {
            System.out.println("\"" + str + "\" is palindrome? " + isPalindrome(str));
        }
    }
}
