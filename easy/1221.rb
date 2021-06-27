# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    
    countL = 0
    countR = 0
    ans = 0
    for i in 0...s.length
       c = s[i]
       c == "L"? countL += 1 : countR += 1
       if countL > 0 && countR > 0 && countL == countR
           ans += 1
           countL = 0
           countR = 0
       end
    end
    return ans
end
