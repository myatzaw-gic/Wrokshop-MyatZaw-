public class Q5 { 

    public static void main(String[] args) {
        int[] array = {2, 5, 8, 12, 16, 23, 38, 45, 56, 72};
        int target = 23;

        int index = binarySearch(array, target);

        if (index != -1) {
            System.out.println("Element " + target + " found at index " + index);
        } else {
            System.out.println("Element " + target + " not found in the array");
        }
    }

    public static int binarySearch(int[] array, int target) {
        int low = 0;
        int high = array.length - 1;

        while (low <= high) {
            int mid = low + (high - low) / 2; // prevents overflow

            if (array[mid] == target) {
                return mid; // element found
            } else if (array[mid] < target) {
                low = mid + 1; // search right half
            } else {
                high = mid - 1; // search left half
            } 
        }

        return -1; // element not found
    }
}
