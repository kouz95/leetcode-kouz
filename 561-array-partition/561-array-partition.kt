class Solution {
    fun arrayPairSum(nums: IntArray): Int =
    nums.sortedArrayDescending()
    .filterIndexed {index, _ -> index % 2 != 0}
    .sum()
}