func diagonalSort(mat [][]int) [][]int {
  
    for row:=0; row<len(mat); row++ {
        
        for col:=0; col<len(mat[0]); col++ {
            for dia :=1; dia+row<len(mat) && dia+col<len(mat[0]); dia++ {
                cur := mat[row][col]
                compare := mat[row+dia][col+dia]
                
                if cur > compare {
                    mat[row][col], mat[row+dia][col+dia] = mat[row+dia][col+dia], mat[row][col]
                }
            }
        }
    }
    return mat
}
