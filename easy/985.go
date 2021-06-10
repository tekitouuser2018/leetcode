func sumEvenAfterQueries(nums []int, queries [][]int) []int {
    lengthNums := len(nums)
    lengthQueries := len(queries)
    ans := make([]int , lengthNums)
    for i :=0; i<lengthQueries; i++ {
        val := queries[i][0]
        index := queries[i][1]
        nums[index] += val
        ans[i] = sumOfEven(nums)
    }
    return ans
}

func sumOfEven(addedArr []int) int{
    sum := 0
    for i :=0; i<len(addedArr); i++ {
        if addedArr[i]%2 == 0 {
            sum += addedArr[i]
        }
    }
    return sum
}
