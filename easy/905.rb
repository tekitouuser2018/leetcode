# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
    return nums.sort_by{
        |a| a.to_i % 2
    }
    
end
