
package main

import "C"
import "fmt"

//inicio leetcode
func twoSum(nums []int, target int) []int {
    d := map[int]int{} 
    for i := 0; i < len(nums); i++ { 
        x := nums[i]
        y := target - x
        if j, ok := d[y]; ok { 
            return []int{j, i} 
        }
        d[x] = i 
    }
    return nil /
}
//fin leetcode

func main() {
    nums := []int{2, 7, 11, 15}
    target := 9
    result := twoSum(nums, target)
    fmt.Println(result) // [0, 1]
}
