# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    ans = Array.new(n)
    for i in 0...n
        if n % 2 == 1
            if i == 0
                ans[i] = i
            elsif i % 2 == 1
                ans[i] = (ans[i-1] + 1) * -1 
            elsif i % 2 == 0
                ans[i] = (ans[i-1]) * -1 
            end
        else
            if i == 0
                ans[i] = 1
            elsif i % 2 == 1
                ans[i] = (ans[i-1]) * -1 
            elsif i % 2 == 0
                ans[i] = (ans[i-1].abs + 1) * -1 
            end
        end
        
    end
    
    return ans
end
