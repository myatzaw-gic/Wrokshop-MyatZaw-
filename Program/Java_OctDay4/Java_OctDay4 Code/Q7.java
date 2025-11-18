import java.util.Scanner;

public class Q7 {


    public static int binarySearch(int[] arr, int key) {
        int left = 0;
        int right = arr.length - 1;

        while (left <= right) {
            int mid = left + (right - left) / 2; // avoid overflow

            if (arr[mid] == key) {
                return mid; // key found at index mid
            } else if (arr[mid] < key) {
                left = mid + 1; // search right half
            } else {
                right = mid - 1; // search left half
            }
        }

        return -1; 
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int[] arr = {2, 5, 8, 12, 16, 23, 38, 45, 56, 72, 91};

        System.out.print("Enter the number to search: ");
        int key = scanner.nextInt();

        int result = binarySearch(arr, key);

        if (result != -1) {
            System.out.println("Element found at index: " + result);
        } else {
            System.out.println("Element not found in the array.");
        }

        scanner.close();
    }
}
