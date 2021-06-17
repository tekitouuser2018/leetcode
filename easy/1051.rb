# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    diff = heights.sort
    count = 0
    for i in 0...heights.length
        l = heights[i]
        r = diff[i]
        if l != r
           count += 1 
        end
    end
    return count
end
