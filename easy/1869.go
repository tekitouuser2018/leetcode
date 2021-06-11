func checkZeroOnes(s string) bool {
    ans := false
    length := len(s)
    maxOne := 0
    maxZero := 0
    countOne := 0
    countZero := 0
    for i:=0; i<length; i++ {
        cur := string(s[i])
        if cur == "0" {
            countZero++
            countOne = 0
        }else {
            countOne++
            countZero = 0
        }
        
        if maxOne < countOne {
            maxOne = countOne
        }
        if maxZero < countZero {
            maxZero = countZero
        }
        
    }
    if maxOne > maxZero {
        ans = true
    }
    
    return ans
}
