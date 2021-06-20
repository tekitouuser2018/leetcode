# @param {String[]} words
# @return {String[]}
def common_chars(words)
    compareBit = "11111111111111111111111111"
    memoCount = Array.new(26,1)

    for i in 0...words.length
        
       str = words[i]
        currentBit = "00000000000000000000000000"
        currentCount = Array.new(26,0)
        
        for j in 0...str.length
           char = str[j]
            charBytes = char.bytes
            charBytes = charBytes[0].to_i - "a".bytes[0].to_i
            currentBit[charBytes] = "1" 
            currentCount[charBytes] = (currentCount[charBytes] + 1)
        end

        compareBit = (compareBit.to_i(2) & currentBit.to_i(2)).to_s(2)
        while compareBit.length < 26
           compareBit.insert(0,"0")
        end
        # p compareBit
        if i == 0 
           memoCount = currentCount 
        else
            for i in 0...memoCount.length
               memoCount[i] = [memoCount[i],currentCount[i]].min 
            end
        end
        # p memoCount
    end
    ans = Array.new()
    for i in 0...compareBit.length
       charBit = compareBit[i]
        if charBit == "0"
           next 
        end
        char = to_alphabet(i)
      
        for i in 0...memoCount[i]
            ans.push(char)
        end
        # p char
    end
    
    return ans
end

def to_alphabet (num)
    alph = ("a".."z").to_a
    return alph[num]
end
