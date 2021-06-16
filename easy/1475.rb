# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
    length = prices.length
    
    for i in 0...length-1
        
        price = prices[i]
        
        for j in i+1...length
            discount = prices[j]
          
            if price.to_i >= discount.to_i
                prices[i] = prices[i].to_i - discount.to_i
                break
            end
        end
        
        
    end
    return prices
end
