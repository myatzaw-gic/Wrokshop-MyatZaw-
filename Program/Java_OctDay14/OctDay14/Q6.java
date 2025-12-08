public class Q6 {

    // Method to find the longest common substring between two strings
    public static String longestCommonSubstring(String s1, String s2) {
        // Determine which string is longer
        String longer = s1.length() > s2.length() ? s1 : s2;
        String shorter = s1.length() > s2.length() ? s2 : s1;
        String result = "";

        // Generate all possible substrings of the shorter string
        for (int i = 0; i < shorter.length(); i++) {
            for (int j = i + 1; j <= shorter.length(); j++) {
                String substring = shorter.substring(i, j);

                // Check if the longer string contains this substring
                if (longer.contains(substring) && substring.length() > result.length()) {
                    result = substring;
                }
            } 
        }

        return result; // Return the longest common substring found
    }

    // Main method to test the code
    public static void main(String[] args) {
        String s1 = "programming";
        String s2 = "gaming";

        String result = longestCommonSubstring(s1, s2);

        System.out.println("String 1: " + s1);
        System.out.println("String 2: " + s2);
        System.out.println("Longest Common Substring: " + result);
    }
}
 