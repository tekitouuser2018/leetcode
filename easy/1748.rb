# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
    uniqueSum = 0
    if nums.length == 1
       return nums[0] 
    end
    
    nums.sort!
    memo = Array.new(101)
    
    for i in 0...nums.length
        
        if i == nums.length-1 && !memo[nums[i]]
            uniqueSum += nums[i]
            break
        end
        
        l = nums[i]
        r = nums[i+1]
        
        
        if memo[l]
            next
        end
        
        if l == r
            memo[l] = true
        else
            uniqueSum += nums[i]
        end
        
    end
    
    return uniqueSum
end
