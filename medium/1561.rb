# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
    r_index = 0
    ans = 0
    len = piles.length
    piles.sort!
    piles.each_with_index do |n, idx|
       break if idx >= len/3 
       ans += piles[len-1-r_index-1]
       r_index += 2
    end
    ans
end
