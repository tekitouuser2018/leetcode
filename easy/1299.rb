# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
    if arr.length == 1
       return [-1] 
    end
    
    numS =  Struct.new(:num, :index)
    num = numS.new(0 ,1)
    memo = Array.new
    
    for i in 0...arr.length
       memo[i] = numS.new(arr[i], i) 
    end
    memo.sort! {|l,r| r.num <=> l.num}.reverse
    left = 0
    index = 0
    
    for i in 0...arr.length
        cur = memo[i].num
        index = memo[i].index
        memoInd = index
        if index <= left
           next 
        end
        
        while index >= left
            arr[index] = cur
            index -= 1
        end
        left = memoInd
        
    end
    arr[arr.length-1] = -1
    
    return arr
end

