class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        val numsPerIndex = nums.mapIndexed { i, num -> Pair(num, i) }
            .associate { it }
        val result = IntArray(2)

        nums.indices.forEach { i ->
            val num2Index = target - nums[i]
            if (numsPerIndex.containsKey(num2Index) && numsPerIndex[num2Index]!! != i) {
                result[0] = i
                result[1] = numsPerIndex[num2Index]!!
            }
        }

        return result
    }
}