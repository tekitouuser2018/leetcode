func findTheWinner(n int, k int) int {
    
    memo := make([]bool, n)
    count := n
    index := 0
    if n == 1 {
        return 1
    }
    for count>1{
		c := 0
        next := index + c

		for c < k-1{
			
			next++

			next %= n
			index = next
			

			if memo[index]{
				
				continue
			}
			c++

		}
       

        memo[index] = true
        for memo[index]{
			index++
            index %= n
		}
        count--
		
    }
	

    
    for i:=0; i<n; i++ {

        if !memo[i]{
            return i+1
        }
    }
    return 0
}
