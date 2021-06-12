func deckRevealedIncreasing(deck []int) []int {
    length := len(deck)
    ret := make([]int, 1)
    

    sort.Slice(deck, func(i, j int) bool { 
        return deck[i] > deck[j]
    })

    
    for i:=0; i<length; i++ {
        temp := make([]int, len(ret))
		copy(temp, ret)
		tmpDeck := make([]int, len(deck))
		copy(tmpDeck, deck)
		temp = append(temp[len(temp)-1:] , temp[:len(temp)-1]...)
		if i==0 {
			temp = []int{}
		}
       
        ret= append(tmpDeck[:1] , temp...)
		
        deck = deck[1:]
	
    }
    
    
    return ret
}
