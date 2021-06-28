# @param {String} s
# @return {Integer[]}
def di_string_match(s)
    n = s.length + 1
    l = 0
    r = n-1
    ans = Array.new()
    for i in 0...s.length
        c = s[i]
        if c == "I"
           ans << l
           l += 1
        else
            ans << r
            r -= 1
        end
    end
    ans << l
    return ans
end
