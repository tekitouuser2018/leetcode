# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
    nums.sort!
    len = nums.length
    return (nums[len-1] * nums[len-2]) - (nums[0] * nums[1])
end
