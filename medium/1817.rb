# @param {Integer[][]} logs
# @param {Integer} k
# @return {Integer[]}
def finding_users_active_minutes(logs, k)
    logs.sort_by! {|n| [n[0],n[1]]}
    current = 0
    ans = Array.new(k, 0)
    hash = {}
    logs.each_with_index do |n, idx|
       id = n[0]
        current = id if idx == 0
       time = n[1]
       if (idx == (logs.length-1)) then
           
           if id == current then
               hash[time] = true
               len = hash.length
               ans[len-1] += 1
           else
               len = hash.length
               ans[len-1] += 1
               hash = {}
               hash[time] = true
               len = hash.length
               ans[len-1] += 1
           end
       elsif id == current then
           hash[time] = true
       else
           len = hash.length
           ans[len-1] += 1
           hash = {}
           hash[time] = true
           current = id
       end
    end
    ans
end
