# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    product = nums.inject(:*)
    return signFunc(product)
end

def signFunc(product)
    if product > 0 
       return 1
    elsif product < 0
        return -1
    else
        return 0
    end
end
