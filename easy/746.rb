# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    len = cost.length
    dp = Array.new(len, 0)
    dp[0] = cost[0]
    dp[1] = cost[1]
    
    for i in 2...len
        
        dp[i] = cost[i] + [dp[i-1], dp[i-2]].min
    end
    return [dp[len-1], dp[len-2]].min
end
