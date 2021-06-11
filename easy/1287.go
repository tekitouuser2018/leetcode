func findSpecialInteger(arr []int) int {
    max := 0
    countMax := 0
    count := 0
    for i :=0; i<len(arr); i++ {
        cur := arr[i]
        if i == 0 {
            count++
            max = cur
            continue
        }
        if cur == arr[i-1] {
            count++
        }else {
            count = 1
        }
        
        if countMax < count {
            countMax = count
            max = cur
        }
        
    }
    return max
}
