# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
    even = nums.select {|a| a % 2 == 0}
    odd = nums.select {|a| a % 2 == 1}
    index = 1
    for i in 0...odd.length
       even.insert(index,odd[i]) 
        index += 2
    end
    return even
    
end
