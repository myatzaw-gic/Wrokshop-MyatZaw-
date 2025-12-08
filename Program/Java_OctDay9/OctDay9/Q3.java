public class Q3 {


    public boolean isLeapYear(int year) {
        return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
    } 


    public static void main(String[] args) {
        Q3 checker = new Q3();

        // Example test cases
        int[] testYears = {1900, 2000, 2023, 2024};

        for (int year : testYears) {
            if (checker.isLeapYear(year)) {
                System.out.println(year + " is a leap year.");
            } else {
                System.out.println(year + " is not a leap year.");
            }
        }
    }
}
