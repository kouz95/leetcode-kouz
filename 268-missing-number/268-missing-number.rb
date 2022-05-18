# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    all_bits = nums.size

    for i in 0..nums.size - 1
        all_bits ^= i
        all_bits ^= nums[i]
    end
    
    all_bits
end