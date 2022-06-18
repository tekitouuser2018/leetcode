# @param {Integer[][]} adjacent_pairs
# @return {Integer[]}
def restore_array(adjacent_pairs)
    route = Array.new((10**5 +1)*2) {Array.new()}

    start = 1000000
    ed = 1000000
    ans = []
    adjacent_pairs.each do |nums|
       l = nums[0]
        r = nums[1]

        
        route[find_index(l)] << r
        route[find_index(r)] << l
    end
    route.each_with_index do |n, index|
        index = (index - 100000)*-1 if index > 100000
        start = index if (n.size == 1 && start == 1000000)
        ed = index if (n.size == 1 && start != 1000000 && start != n)
    end

    find_route(start, ed, route)
end

def find_index(num)
    num < 0 ? (num*-1)+10**5 : num
end

def find_route(start, ed, routes)
    ans = []
    ans << start
    memo = Array.new((10**5 +1)*2, false)
    memo[find_index(start)] = true
    
    loop do
        break if start == nil
        nx = routes[find_index(start)]
        
        sz = nx.size
        l = nx[0]
        r = nx[1] if sz > 1
        break if l == nil && r == nil
        memo[find_index(l)] ? start = r : start = l
        ans << start
        memo[find_index(start)] = true
        break if ans[ans.size-1] == ed

    end
    ans
end
