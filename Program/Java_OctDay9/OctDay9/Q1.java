import java.util.Scanner;

public class Q1 { 


    public static boolean isValidEmail(String email) {

        return email.matches("^[\\w.-]+@([\\w-]+\\.)+[\\w-]{2,4}$");
    }
 
    public static void main(String[] args) {
    
        Scanner scanner = new Scanner(System.in);

    
        System.out.print("Enter your email address: ");
        String email = scanner.nextLine();

     
        if (isValidEmail(email)) {
            System.out.println(email + " Valid Email ");
        } else {
            System.out.println(email + " Invalid Email ");
        }

        scanner.close(); 
    }
}

