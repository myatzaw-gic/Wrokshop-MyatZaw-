public class Q3 {
    public static Integer findMax(int[] numbers) {
        if (numbers == null || numbers.length == 0) {
            return null; // or throw IllegalArgumentException
        } 
        
        int max = numbers[0];
        for (int i = 1; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return max;
    }
 
    public static void main(String[] args) {
        int[] nums = {3, 7, 2, 9, 4};
        System.out.println(findMax(nums));
    }
    
}
