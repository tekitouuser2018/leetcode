# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
    len = arr.length
    for i in 0...len-1
       l = arr[i]
        r = arr[i+1]
        if l > r
           return i
        end
        
    end
end
