# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
    
    arr.sort! 
    diffMin = 100000
    
    tmpArr = Array.new()
    for i in 0...arr.length - 1
       l = arr[i]
        r = arr[i+1]
        curDiff = (l-r).abs
        if curDiff < diffMin
           diffMin = curDiff
            tmpArr = Array.new()
            tmpArr << [l,r]
        elsif curDiff == diffMin
            tmpArr << [l,r]
        end
    end
    return tmpArr
end
