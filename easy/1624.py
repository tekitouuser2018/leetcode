class Solution:
    def maxLengthBetweenEqualCharacters(self, s: str) -> int:
        length = len(s)
        if length == 1:
            return -1
        ans = -1
        for i in range(0,length):
            
            l = s[i]
            r = s[length-i-1]
        
                
            for j in range(i+1,length):
                r = s[j]
                if l==r:
                    # print(l,r, j-i-1)
                   
                    ans = max(ans, j-i-1)
            
        
        return ans
        
