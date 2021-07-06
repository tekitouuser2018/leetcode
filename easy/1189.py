from collections import Counter

class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        balloon = "balloon"
        hMap = Counter()
        for val in text:
            hMap[val] += 1
            
        ans = 100000
        for char in balloon:
            if (char == "o") or (char == "l"):
                ans = min(ans,int(hMap[char]/2))
            else:
                ans = min(ans,hMap[char])
        
        return ans
        
