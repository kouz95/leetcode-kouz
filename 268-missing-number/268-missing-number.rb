# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    all_bits = nums.size
    
    nums.each_with_index do |num, index|
        all_bits ^= index
        all_bits ^= num
    end
    
    all_bits
end