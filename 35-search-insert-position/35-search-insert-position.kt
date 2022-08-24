class Solution {
    fun searchInsert(nums: IntArray, target: Int): Int {
        var rightIndex = nums.size - 1
        var leftIndex = 0;

        while (leftIndex < rightIndex) {
            val middleIndex = (leftIndex + rightIndex) / 2

            if (nums[middleIndex] == target) {
                return middleIndex
            }
            if (nums[middleIndex] > target) {
                rightIndex = middleIndex
                continue
            }
            leftIndex = middleIndex + 1
        }

        return if (nums[leftIndex] < target) leftIndex + 1 else leftIndex   
    }
}