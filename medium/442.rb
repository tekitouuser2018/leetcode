# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    ans = []
    nums.sort!.each_with_index do |n,index|
        next if index >= nums.size-1
        ans << n if n == nums[index+1]
    end
    ans
end
