# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
    memo = Array.new(1001,0)
    arr.each do |num|
       memo[num] += 1 
    end

    p memo = memo.select {|n| n != 0}.sort!
    
    for i in 1...memo.length
       l = memo[i-1]
        r = memo[i]
        r == l ? (return false) : 0
    end
    
    
    return true
end
