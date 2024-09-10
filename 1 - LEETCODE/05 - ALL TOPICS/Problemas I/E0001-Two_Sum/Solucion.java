/**
 *     ? Problema 0001 - Suma de Dos
 *      * Autor : Marcos Yana 
 */

 // ! Primera Solucion
 
import java.util.HashMap;
import java.util.Map;

class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> numArray = new HashMap<>();
        for (int i = 0;; ++i) {
            int almacena = nums[i];
            int complemento = target - almacena;
            if (numArray.containsKey(complemento)) {
                return new int[] {numArray.get(complemento), i};
            }
            numArray.put(almacena, i);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Solution solution = new Solution();
        int[] nums = {2, 7, 11, 15};
        int target = 9;
        int[] result = solution.twoSum(nums, target);
        
        // Imprimir el resultado
        System.out.println("[" + result[0] + ", " + result[1]+"]");
    }
}
