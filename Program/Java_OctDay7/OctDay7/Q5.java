import java.util.Arrays;
import java.util.Scanner;

public class Q5 {
 
   
    public static int binarySearch(int[] arr, int target) {
        int low = 0;
        int high = arr.length - 1; 

        while (low <= high) { 
            // Safe middle calculation
            int mid = low + (high - low) / 2;

            if (arr[mid] == target) {
                return mid; 
            } else if (arr[mid] < target) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }

        return -1; 
    }


    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

       
        int[] numbers = {2, 5, 8, 12, 16, 23, 38, 45, 56, 72, 91};
        Arrays.sort(numbers); 

        System.out.print("Enter a number to search: ");
        int target = input.nextInt();

        int index = binarySearch(numbers, target);

        if (index != -1) {
            System.out.println("Number " + target + " found at index " + index + ".");
        } else {
            System.out.println("Number " + target + " not found in the array.");
        }

        input.close();
    }
}

