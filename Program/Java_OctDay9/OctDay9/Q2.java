public class Q2 {

    public static int sumEvenNumbers(int[] numbers) {
        int sum = 0;
        for (int num : numbers) {
            if (num % 2 == 0) { 
                sum += num;
            }
        }   
        return sum;
    }

    public static void main(String[] args) {

        int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8};

    
        int result = sumEvenNumbers(numbers);


        System.out.println("Array elements:");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
        System.out.println("\nSum of even numbers = " + result);
    }
}
