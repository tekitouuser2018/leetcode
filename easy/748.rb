# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
    plate = license_plate.downcase.split("").select {|w|  ((w.ord>= "a".ord) && (w.ord <= "z".ord)) }
    shortest = 100000
    ans = ""
    for i in 0...words.length
       word = words[i]
        wArr = word.downcase.split("")
        clone = plate.clone
        
        for j in 0...wArr.length
           w = wArr[j]
            for k in 0...clone.length
               c = clone[k]
                if w == c
                   clone.delete_at(k)
                    break
                end
            end
            if clone.length == 0 && shortest > wArr.length
                shortest = wArr.length
                ans = word
            end
        end
    end
    
    return ans
end
