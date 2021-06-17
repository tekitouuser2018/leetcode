# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)

    target.sort!
    arr.sort!
    
    
    for i in 0...target.length
        l = target[i]
        r = arr[i]
        if l != r
            return false
        end
    end
    return true
  
    
end
