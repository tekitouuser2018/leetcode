# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
    memo = Array.new(10001,0)
    len = nums.length
    
    for i in 0...len
       memo[nums[i]] += 1 
    end

    return memo.index(len/2)
end
