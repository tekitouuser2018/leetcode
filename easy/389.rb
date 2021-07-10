# require 'set'
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    p tt = t.split('').sort!
    p ss = s.split('').sort!
    for i in 0...ss.length
        l = ss[i]
       for j in 0...tt.length
           r = tt[j]

           if l == r
             tt.delete_at(j)
             break
           end
       end
    end
    
    return tt.join('').to_s
end
