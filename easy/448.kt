class Solution {
    fun findDisappearedNumbers(nums: IntArray): List<Int> {
        val n = nums.size
        nums.distinct()
        var list = (1..n).toList()
        
        return list.minus(nums.toHashSet())
    }
}
