# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
    sum = 0
    ans = [0,0]
    len = s.length
    s.chars.each_with_index do |x, i|
        num = widths[x.ord - 97]
        if sum + num > 100
           ans[0] += 1
           sum = 0
        end
        sum += num
        if i == len - 1
           ans[0] += 1
           ans[1] = sum 
        end
    end
    ans
end
