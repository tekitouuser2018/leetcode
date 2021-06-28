# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
    
    
    sumOfASC = Array.new()
    sumOfDESC = Array.new()
    len = nums.length
    
    for i in 0...len
       c = nums[i]
        rev = nums[len-1-i]
        if i == 0
            sumOfASC[i] = c
            sumOfDESC[len-1-i] = rev
        else
            sumOfASC[i] = c + sumOfASC[i-1]
            sumOfDESC[len-1-i] = rev + sumOfDESC[len-i]
        end
    end
    
    i = len -1
    while i >= 1
       c = sumOfASC[i-1]
        rev = sumOfDESC[i]
        if c < rev
            return nums.slice(i,len).reverse
        end
        i -= 1
    end
    
    return nums
end
