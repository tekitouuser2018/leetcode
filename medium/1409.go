func processQueries(queries []int, m int) []int {
    length := len(queries)
    ans := make([]int, length)
    
    permutation := arrayInit(m)
    
    for i:=0; i<length; i++ {
        q := queries[i]
        
        for j:=0; j<m; j++{
            if permutation[j].number == q {
                ans[i] = permutation[j].index
                permutation[j].index = 0
                sort.Slice(permutation, func(i, j int) bool {
                    return permutation[i].index < permutation[j].index
                })
                break
            }
            permutation[j].index++
        }
    }
    
    return ans
    
}

type Item struct {
    number int
    index int
}

func arrayInit (m int) []Item {
    array := make([]Item, m)
    for i:=0; i<m; i++ {
        array[i] = Item{i+1, i}
    }
    return array
}
