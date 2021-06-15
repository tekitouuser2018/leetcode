# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
    amount = 0
    nums.each_with_index do |item, index|
        if index == 0
            next
        end
        left = nums[index-1]
        right = nums[index]
        if left < right
            next
        end
        diff = (left-right).abs + 1
        amount += diff
        nums[index] += diff
    end
    return amount
end
