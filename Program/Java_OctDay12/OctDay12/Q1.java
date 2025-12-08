import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Q1 {

    public static void main(String[] args) {
     
        List<Integer> numbers = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            numbers.add(i);
        } 

        System.out.println("Original list: " + numbers);

        // Option A: Iterate backwards
        List<Integer> listA = new ArrayList<>(numbers);
        for (int i = listA.size() - 1; i >= 0; i--) {
            if (listA.get(i) % 2 == 0) {
                listA.remove(i);
            }
        }
        System.out.println("After Option A (backwards loop): " + listA);

        // Option B: Using Iterator
        List<Integer> listB = new ArrayList<>(numbers);
        for (Iterator<Integer> iter = listB.iterator(); iter.hasNext();) {
            if (iter.next() % 2 == 0) {
                iter.remove();
            }
        }
        System.out.println("After Option B (Iterator): " + listB);

        // Option C: Forward loop with index adjustment
        List<Integer> listC = new ArrayList<>(numbers);
        for (int i = 0; i < listC.size(); i++) { 
            if (listC.get(i) % 2 == 0) {
                listC.remove(i);
                i--; // stay at the same index after removal
            }
        }
        System.out.println("After Option C (index adjustment): " + listC);

        // Option D: Java 8+ removeIf
        List<Integer> listD = new ArrayList<>(numbers);
        listD.removeIf(n -> n % 2 == 0);
        System.out.println("After Option D (removeIf): " + listD);
    }
}
