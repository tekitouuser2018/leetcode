# @param {Integer} n
# @return {Integer}
def climb_stairs(n)

    dp = Array.new(n)
    dp[0] = 1
    dp[1] = 2
    for i in 2...n
       dp[i] = dp[i-2] + dp[i-1] 
    end

    return dp[n-1]
end
