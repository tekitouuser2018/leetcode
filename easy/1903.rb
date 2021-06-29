# @param {String} num
# @return {String}
def largest_odd_number(num)
    len = num.length
    i = len -1
   
    while i >= 0
        c = num[i].to_i
        if c % 2 == 1
           return num.slice(0,i+1) 
        end
        i -= 1
    end
    return ""
end
