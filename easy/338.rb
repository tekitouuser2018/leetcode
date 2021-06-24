# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    ans = Array.new()
    for i in 0..n
        cur = i.to_s(2)
        count = 0
        for j in 0...cur.length
           c = cur[j]
            if c == "1"
                count += 1
            end
        end
        ans << count
    end
    return ans
end
