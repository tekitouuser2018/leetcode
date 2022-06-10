# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
    s_array = s.split('')
    t_array = t.split('')
    
    s_memo = Array.new(100, 0)
    t_memo = Array.new(100, 0)

    s_array.each {|n| s_memo[ n.ord - 'a'.ord] += 1 }
    t_array.each {|n| t_memo[ n.ord - 'a'.ord] += 1 }
    
    ans = 0
    s_memo.each_with_index do |n, index|
       ans += (n-t_memo[index]).abs 
    end
    ans / 2
end
