class Solution {
    fun rearrangeCharacters(s: String, target: String): Int {
        var sMemo = Array(200){0};
        var targetMemo = Array(200){0};
        s.toCharArray().forEach { elm ->
            sMemo[elm.toInt()]++
        }
        target.toCharArray().forEach { elm ->
            targetMemo[elm.toInt()]++
        }
        
        var ans= 1000000
        for ((index, elm) in targetMemo.withIndex()) {
            if (elm <= 0) {
                continue
            }
            
            
            val tmp: Int = (sMemo[index]/elm)
            ans = Math.min(ans, tmp)
        }
        
        return if (ans == 1000000) 0 else ans
    }
}
