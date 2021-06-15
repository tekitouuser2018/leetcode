# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    l = 0
    r = 0
    nums = nums.sort
    len = nums.length()
    l = nums[len-2]
    r = nums[len-1]
   
    return (l-1) * (r-1)
    
end
