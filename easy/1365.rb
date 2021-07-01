# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    memo = Array.new(102,0)
    ans = Array.new(nums.length,0)
    len = nums.length
    for i in 0...len
       num = nums[i]
        memo[num] += 1
    end
    
    for i in 0...101
       
        memo[i] += memo[i-1] 
    end
    
    for i in 0...len
       num = nums[i]
        ans[i] = memo[num-1]
    end
    
    return ans
end
