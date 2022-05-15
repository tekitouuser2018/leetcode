# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
    arrEven = nums.select.with_index{|n,idx|(idx % 2 == 0)}
    arrOdd = nums.select.with_index{|n,idx|(idx % 2 == 1)}
    arrEven.sort!
    arrOdd.sort!.reverse!
    
    ans = []
    arrEven.each_with_index do |num, idx|
      ans.push(arrEven[idx])
      ans.push(arrOdd[idx]) if arrOdd.length - 1 >= idx
    end
    ans
end
