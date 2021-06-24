# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    pascal = Array.new(num_rows, Array.new(0))
    for i in 0...num_rows
        if i == 0
            pascal[i] = [1]
            next
        end
        if i == 1
            pascal[i] = [1,1]
            next
        end

        tmp = Array.new()
        for j in 0..i
            
            if j == 0 || j == i
                tmp << 1
            else
               
                tmp << pascal[i-1][j-1] + pascal[i-1][j]
            end
        end
        pascal[i] = tmp
        
    end
    
    
    return pascal
end
