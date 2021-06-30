# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
    nums.sort!
    
    for i in 0...nums.length
        num = nums[i]
        if num < 0
            nums[i] = nums[i] * -1
        elsif num == 0
            k = 0
        else
            indexL = [0,i-1].max
            l = nums[indexL].abs
            r = num.abs
            k & 1 == 1 ? (k = 1): (k = 2)
            k == 2 ? (k = 1) : (k = -1)
            if l <= r
                nums[indexL] = k * nums[indexL]
                
            else
                nums[i] = k * nums[i]
                
            end
            
            k = 0
        end
        
        k -= 1
        if k <= 0
           break 
        end
    end
    
    return nums.sum
end
