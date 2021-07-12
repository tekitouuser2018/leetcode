# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    hash = {}
    for i in 0...nums.length
       num = nums[i]
        if hash.has_key?(num)
           hash[num] += 1
        else
            hash[num] = 1
        end
    end
    hash.each_value do |value|
       if value >= 2
          return true 
       end
    end
    return false
end
