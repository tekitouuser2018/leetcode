# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
    ans = num
    
    for i in 0...num.to_s.length
        c = num.to_s[i]
        
        if c == "6" 
            tmp = num.to_s
            tmp[i] = "9"
            
            ans = tmp.to_i
            break
        end
        
    end
    
    return ans
end
