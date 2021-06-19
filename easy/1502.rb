# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
    ans = true
    diff = 0
    arr.sort!
    for i in 0...arr.length-1
        
       l = arr[i]
        r = arr[i+1]
        if i == 0
            diff = r - l
            next
        end
        if diff != r - l
           ans = false
            break
        end
    end
    
    return ans
end
