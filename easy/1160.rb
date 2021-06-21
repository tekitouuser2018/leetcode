# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
    count = 0
    chars =  chars.chars.sort(&:casecmp)
    
    for i in 0...words.length
        tmpArr = Marshal.load(Marshal.dump(chars))
        word = words[i]
        wordArr =  word.chars.sort(&:casecmp)
        len = wordArr.length
        ok = true
        for j in 0...wordArr.length
            cur = wordArr[j]

            if tmpArr.index(cur) == nil
                ok = false
               next 
            end
            tmpArr.delete_at(tmpArr.index(cur))
        end
        
        if ok 
            count += len
        end
    end
    
    return count
end
