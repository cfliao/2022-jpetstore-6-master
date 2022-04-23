package jpetstore.backup;

import java.util.Arrays;
import java.util.List;

public class TestLambda {
    public static void main(String[] args) {
        List<Integer> ints = Arrays.asList(7, 6, 5, 4);
        ints.sort(TestLambda::compare);
        System.out.println(ints);
    }

    public static int compare(Integer a, Integer b) {
        return a - b;
    }
}
