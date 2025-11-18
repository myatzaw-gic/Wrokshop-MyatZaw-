import java.util.regex.*;

public class Q5 {
    public static void main(String[] args) {
        String phone = "(123) 456-7890";
        String regex = "^\\(\\d{3}\\)\\s\\d{3}-\\d{4}$";

        if (Pattern.matches(regex, phone)) {
            System.out.println(phone + " is valid!");
        } else {
            System.out.println(phone + " is invalid!");
        }
    } 
}
