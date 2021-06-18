# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    strengthSt = Struct.new(:index, :strength)
    ans = []
    rowLen = mat.length
    colLen = mat[0].length
    memo = Array.new()
    for row in 0...rowLen
        count = 0
        for col in 0...colLen
           person = mat[row][col]
            if person == 0
                break
            end
            count += 1
        end
        memo[row] = strengthSt.new(row, count)
        
    end
    memo.sort_by! {|a| [a.strength, a.index] }

    for i in 0...k
        ans[i] = memo[i].index
    end
    
    return ans
end

