func minOperations(boxes string) []int {
    
    n := len(boxes)
    ans := make([]int, n)
    
    for i:=0; i<n; i++ {
        
        for j:=0; j< n; j++ {
            if j == i {
                continue
            }
            ball := string(boxes[j])
            if ball == "1" {
                ans[i] += int(math.Abs(float64(i)-float64(j)))
            } 
        }
        
    }
    return ans
}
