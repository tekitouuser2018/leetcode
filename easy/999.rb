# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
    r = board.length
    c = board[0].length
    
    for row in 0...r
       
        for col in 0...c
           cur = board[row][col]
            if cur == "R"
                return searchP(board, row, col)
            end
        end
    end
end

def searchP(board, row, col)
   count = 0
    r = row - 1
    c = col
    while r >= 0 
        
        if board[r][c] == "p"
            count += 1
            break
        elsif board[r][c] != "."
            break
        end
        r -= 1
    end
    r = row + 1
    while r < board.length 
        
        if board[r][c] == "p"
            count += 1
            break
        elsif board[r][c] != "."
            break
        end
        r += 1
    end
    r = row
    c = col - 1
    while c >= 0 
        
        if board[r][c] == "p"
            count += 1
            break
        elsif board[r][c] != "."
            break
        end
        c -= 1
    end
    c = col + 1
    while c < board[0].length 
        
        if board[r][c] == "p"
            count += 1
            break
        elsif board[r][c] != "."
            break
        end
        c += 1
    end
    return count
end
