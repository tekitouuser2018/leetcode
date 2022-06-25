class Solution {
    fun firstUniqChar(s: String): Int {
        var sMemo = Array(200){0};
        var sArray = s.toCharArray()
        var ans = -1
        sArray.forEach { elm ->
            sMemo[elm.toInt()]++
        }
        
        for ((index, elm) in sArray.withIndex()) {
            if (sMemo[elm.toInt()] == 1) {
                ans = index
                break
            }
            
        }
        
        return ans
    }
}
