func countSquares(matrix [][]int) int {
    n := len(matrix)
    m := len(matrix[0])
    count := 0
    for row:=0; row<n; row++ {
        
        for col:=0; col<m; col++ {
            
            
            count += countSquare(matrix, row, col, n , m)
            
        }
    }
    return count
}

func countSquare(matrix [][]int, sRow int, sCol int, n int, m int) int {
    count := 0
    countRow := 0
    maxSquare := 0
    for row:=sRow; row<n; row++ {
        cur := matrix[row][sCol]
        if cur == 0{
            break
        }
        maxSquare++
        
    }
	

    for row:=sRow; row<n; row++ {
        countCol :=0
        countRow++
        if maxSquare < countRow{
            break
        }
		

        for col:=sCol; col<m; col++ {
            cur := matrix[row][col]
            if cur == 0 {
                
				maxSquare = countCol

                break
            }
            countCol++
			

            if countRow == countCol {
				t := true
				for reverseRow:= row; reverseRow >= sRow; reverseRow-- {
					check := matrix[reverseRow][col]
					if check == 0 {
						t = false
						if maxSquare > countCol {
							maxSquare = countCol
						}
						break
					}
				}
				if t {
					
					count++
					
				}
                break
            }
        }
        
    }
    return count
}
