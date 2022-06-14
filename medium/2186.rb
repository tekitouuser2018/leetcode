# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
    s_memo = Array.new(26, 0)
    t_memo = Array.new(26, 0)
    s.split('').each do |n|
        s_memo[n.ord - 'a'.ord] += 1
    end
    t.split('').each do |n|
        t_memo[n.ord - 'a'.ord] += 1
    end
    ans = 0
    (0...26).each do |n|
        l = s_memo[n]
        r = t_memo[n]
        ans += (l-r).abs
    end
    ans
end
