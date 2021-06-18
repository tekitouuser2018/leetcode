# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.map! {|num| num**2 }
    return nums.sort!
end
