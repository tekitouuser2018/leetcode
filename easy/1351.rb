# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    rowLen = grid.length()
    colLen = grid[0].length()
    count = 0
    grid.each do |row| 
        c = 0
        for i in 0...colLen
           num = row[i]
           if num < 0
              count += colLen - c
              break 
           end
           c += 1
        end
    end
    return count
end
