# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    not_zero_count = 0
    nums.each do |num|
        if num != 0
            nums[not_zero_count] = num
            not_zero_count += 1
        end
    end
    
    for i in 1..nums.length - not_zero_count
        nums[-i] = 0
    end     
end