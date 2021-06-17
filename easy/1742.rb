# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
    n = high_limit - low_limit + 1
    ans = 0
    start = 0
    low_digit = 0
    tmp_low = low_limit
    memo = Array.new(high_limit + 1, 0)
    
    while tmp_low > 0
        low_digit += 1
        start += tmp_low % 10
        tmp_low /= 10
    end
    high_digit = 0
    tmp_high = high_limit
    while tmp_high > 0
        high_digit += 1
        tmp_high /= 10
    end
    
    for num in low_limit..high_limit 
        culc = 0
        tmp = num
        
        while tmp > 0
            culc += tmp % 10
            tmp /= 10
        end
        memo[culc] += 1
        
    end

    return memo.max
end

