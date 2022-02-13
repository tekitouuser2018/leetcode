# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
    len = nums.length
    nums.each_with_index do |x, i|
        leftSum = 0
        rightSum = 0
        if i < len -1
            nums[i+1...len].each do |r| 
                rightSum += r
            end
        end
        if i > 0
            (0...i).each{ |j| 
                leftSum += nums[j]
            }
        end
        
        if leftSum == rightSum
           return i 
        end
    end
    return -1
end
