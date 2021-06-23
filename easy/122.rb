# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    len = prices.length
    i = len -1
    
    count = 0
    dis = false
    while i >= 0
       
        cur = prices[i]
        right = prices[i+1]
        if i == len -1 || !dis || cur > right
           dis = true
            i -= 1
            
            next
       end
        
        if cur <= right
           count += right - cur
        else
            dis = false
        end
        i -= 1
        
    end
    
    return count
end
