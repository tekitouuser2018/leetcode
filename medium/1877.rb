# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
    sorted = nums.sort!
    mx = 0
    len = nums.length
    sorted.each_with_index do |n, idx|
      break if idx >= len/2
      mx = [mx, sorted[idx] + sorted[len-1-idx]].max  
    end
    mx
end
