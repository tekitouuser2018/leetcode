# @param {String} s
# @return {Integer}
def longest_palindrome(s)

    ans = 0
    memo = Array.new(256,0)
    for i in 0...s.length
       c = s[i] 
        memo[c.ord] += 1
    end
    odd = false
    for i in 0...256
        num = memo[i]
        if num % 2 == 1
            odd = true
        end
        ans += (num/2)*2
    end
    odd ? ans += 1 : 0
    
    return ans
end
