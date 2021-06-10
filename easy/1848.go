func getMinDistance(nums []int, target int, start int) int {
    ans := 0
    first := true
    for i := 0 ; i<len(nums); i++ {
        cur := nums[i]
        if cur == target {
            tmp := int(math.Abs(float64(i - start)))
            if first{
                first = false
                ans = tmp
            }else {
                ans = int(math.Min(float64(ans), float64(tmp)))
            }
            
        }
    }
    return ans
}
