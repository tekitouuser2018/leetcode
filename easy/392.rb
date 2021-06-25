# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    ans = true
    memoIndex = -1
    for i in 0...s.length
       subChar = s[i]
        
        check = false
        for j in 0...t.length
           tChar = t[j]
            
            if tChar == subChar && memoIndex < j
                
                t[j] = "*"
                check = true
                memoIndex = j
                break
            end
        end
        if !check
            ans = false
            break
        end
    end
    
    return ans
end
