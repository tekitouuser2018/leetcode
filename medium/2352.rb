# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
    row_size = grid.count
    col_size = grid[0].count

    memo_arr = Array.new
    (0...col_size).each do |i|
        memo = Array.new()
        (0...row_size).each do |j|
            memo.push(grid[j][i])
        end
        memo_arr.push(memo)
    end
    count = 0
    grid.each do |k|
      count += memo_arr.count(k)
    end
    
    count
end
