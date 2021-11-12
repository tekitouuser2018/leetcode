# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
    arr1 = nums1 & nums2
    arr2 = nums2 & nums3
    arr3 = nums3 & nums1
    return arr1 | arr2 | arr3
end
