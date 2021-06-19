# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers (matrix)
    colArr = colRowMatrix(matrix)
    ans = Array.new()
    p colArr
    for i in 0...matrix.length
        min = matrix[i].min
       for j in 0...matrix[0].length
          cur = matrix[i][j]
           if cur != min || cur != colArr[j].max
              next 
           end
           ans.push(cur)
       end
    end
    return ans
end

def colRowMatrix (matrix)
    ret = Array.new(matrix[0].length) { Array.new(matrix.length,0) }
    p ret
    for j in 0...matrix[0].length
       col = Array.new(matrix.length)
        for i in 0...matrix.length
            
            ret[j][i] = matrix[i][j]
        end
        
    end
    
    return ret
end
