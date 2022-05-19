# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
    m = l.length
    ans = []
    (0...m).each do |n|
       sub_array = nums.slice(l[n]..r[n])
       arr_copy = sub_array.sort
       len = arr_copy.length
       diff_memo = arr_copy[1] - arr_copy[0]
       arr_copy.each_with_index do |n, idx|
          if idx >=  len - 1 then
              ans << true
              break
          end
          diff = arr_copy[idx+1] - arr_copy[idx]
          if diff != diff_memo then
             ans << false
             break
          end
       end
    end
    ans
end
