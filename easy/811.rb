# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
    hash = {}
    len = cpdomains.length
    
    for i in 0...len
        s = cpdomains[i].split()
        num = s[0].to_i
        domain = s[1]
        if !hash[domain]
           hash[domain] = num
        else
            hash[domain] += num
        end
        ind = domain.index(".")
        while ind
            domain = domain[ind+1,domain.length]
            if !hash[domain]
               hash[domain] = num
            else
                hash[domain] += num
            end
            ind = domain.index(".")
        end
    end

    
    ans = Array.new()
    hash.each do |key, value|
        
        ans << ((value.to_s) +" "+key)
    end
    
    return ans
end
