# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
    mx = nums.max
    mn = nums.min
    return 0 if mx - mn <= k * 2
    return (mx - k) - (mn + k)
end
