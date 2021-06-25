# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    memoArr = Array.new(Array.new)

    for i in 0..row_index
        tmpArr = Array.new(i+1,0)

        for j in 0..i

           if j == 0 || j == i
               tmpArr[j] = 1
           else
               tmpArr[j] = memoArr[i-1][j-1] + memoArr[i-1][j]
           end
        end
        memoArr << tmpArr
    end
    
    return memoArr[row_index]
end
