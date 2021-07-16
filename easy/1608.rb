# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
    nums.sort!
    ans = -1
    len = nums.length
    max = nums[len-1]
    for i in 0..max
        t = false
        for j in 0...len
            num = nums[j]
            if i<=num
               count = len - j
                if i == count
                    
                   ans = i
                    t = true
                    
                end
                break
            end
        end
        t ? break: 0
        
    end
    return ans
end
