# @param {String[]} words
# @return {Integer}
def num_special_equiv_groups(words)
    count = 0
    len = words.length
    odds = Array.new()
    evens = Array.new()
    memo = Array.new(len, false)
    
    for i in 0...len
       word = words[i]
        odds << word.split(//).select.with_index {|w,index| index % 2 == 1}.sort.join
        evens << word.split(//).select.with_index {|w,index| index % 2 == 0}.sort.join
        
    end

    for i in 0...len
        iOdd = odds[i]
        iEven = evens[i]
        memo[i]? next : 0
        memo[i] = true
        
        for j in i+1...len
            jOdd = odds[j]
            jEven = evens[j]
        
            (iOdd == jOdd && iEven == jEven) ? (memo[j] = true) : 0
        end
        count += 1
    end
    
    
    return count
end
