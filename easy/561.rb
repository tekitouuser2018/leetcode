# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    len = nums.length
    nums.sort!
    sum = 0
    i = 0
    while i < len-1
        sum += [nums[i].to_i, nums[i+1].to_i].min
        i += 2
    end
    return sum
end
