# @param {String} s
# @return {Integer}
def count_good_substrings(s)
    len = s.length
    count = 0
    for i in 0...len-2

       l = s[i]
        m = s[i+1]
        r = s[i+2]
        l != m && l != r && m != r ? count += 1 : 0
        
    end
    
    return count
end
