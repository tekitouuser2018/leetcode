func reinitializePermutation(n int) int {
    count := 0
    arr := make([]int, n)
    for i:=0; i<n; i++ {
        arr[i] = i
    }
    copyArr := make([]int, n)
    copy(copyArr, arr)
    
    for {
        count++
        compare := make([]int, n)
        copy(compare, arr)
        for i:=0; i<n; i++ {
            if i% 2 == 0{
                arr[i] = compare[i/2]
            }else {
                arr[i] = compare[n/2 + (i-1)/2]
            }
        }
        same := true
        for i:=0; i<n; i++ {
            if arr[i] != copyArr[i] {
                same = false
                break
            }
        }
        if same {
            return count
        }
        
    }
    return count
}
