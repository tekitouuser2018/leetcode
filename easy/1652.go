func decrypt(code []int, k int) []int {
    length := len(code)
    ans := make([]int, length)
    
    if k == 0 {
        return ans
    }
    
    if k > 0{
        for i:=0; i<length; i++ {
            
            for j := 1; j<=k; j++ {
                if i+j >= length {
                    ans[i] += code[i+j-length]
                }else {
                    ans[i] += code[i+j]
                }
                
            }
        }
    }else {
        k *= -1
        for i:=0; i<length; i++ {
            
            for j := 1; j<=k; j++ {
                if i-j < 0 {
                    ans[i] += code[i-j+length]
                }else {
                    ans[i] += code[i-j]
                }
                
            }
        }
    }
    
    return ans
    
}
