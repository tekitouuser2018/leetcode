func fairCandySwap(aliceSizes []int, bobSizes []int) []int {
    ans := make([]int , 2)
    lengthA := len(aliceSizes)
    lengthB := len(bobSizes)
    sumAlice := sum(aliceSizes)
    sumBob := sum(bobSizes)
    for indexA:=0; indexA<lengthA; indexA++ {
        curAlice := aliceSizes[indexA]
        
        for indexB := 0; indexB<lengthB; indexB++ {
            curBob := bobSizes[indexB]
            compareB := sumBob - curBob
            compareA := sumAlice - curAlice
            compareA += curBob
            compareB += curAlice
            
            if compareA == compareB {
                ans[0] = curAlice
                ans[1] = curBob
                indexB = lengthB
                indexA = lengthA
            }
            
        }
        
    }
    
    
    return ans
}

func sum(array []int) int {
    amount := 0
    for i:=0; i<len(array); i++ {
        amount += array[i]
    }
    return amount
}
