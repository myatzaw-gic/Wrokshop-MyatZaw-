public class Q8 {
    public static void main(String[] args) {
        int[] arr = {-2, 1, -3, 4, -1, 2, 1, -5, 4}; // Example input
        int maxSum = findMaxSubarraySum(arr);
        System.out.println("Maximum Subarray Sum: " + maxSum);
    }
 
    public static int findMaxSubarraySum(int[] arr) {
        if (arr == null || arr.length == 0) {
            return 0; // Handle empty array
        }

        int maxSum = Integer.MIN_VALUE; // To handle negative numbers
        int currentSum = 0;

        for (int num : arr) {
            // Either start new subarray at num or extend current subarray
            currentSum = Math.max(num, currentSum + num);
            // Update maxSum if currentSum is greater
            maxSum = Math.max(maxSum, currentSum);
        }

        return maxSum;
    }
}

