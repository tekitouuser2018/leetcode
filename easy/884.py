from collections import Counter

class Solution:
    def uncommonFromSentences(self, s1: str, s2: str) -> List[str]:
        
        dictionary = Counter()
        
        for word in s1.split():
            dictionary[word] += 1
        for word in s2.split():
            dictionary[word] += 1
            
        return {k:v for k,v in dictionary.items() if v==1}
        
        
