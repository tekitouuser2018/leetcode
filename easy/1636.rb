# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
    return nums.sort_by {|num| [nums.count(num), -num] }
end
