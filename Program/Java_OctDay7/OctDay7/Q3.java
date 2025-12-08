public class Q3 {

 
    public static int findMax(int[] arr) {
      
        if (arr == null || arr.length == 0) {
            throw new IllegalArgumentException("Array must not be null or empty");
        }
 
        int max = arr[0];

        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
 
        return max;
    }

    public static void main(String[] args) {
        int[] numbers = {12, 5, 30, 7, 25, 18};

        int maximum = findMax(numbers);
        System.out.println("The maximum value in the array is: " + maximum);
    }
}
