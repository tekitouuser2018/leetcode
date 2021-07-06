class Solution:
    def longestNiceSubstring(self, s: str) -> str:
        ans = ""
        
        for index, char in enumerate(s):
            
            lower = [0] * 26
            upper = [0] * 26
            
            if self.checkUpper(char) == False:
                lower[(ord(char) - ord('a'))] = 1
            else:
                upper[(ord(char) - ord('A'))] = 1
            
            for ind in range(index+1, len(s)):
                if self.checkUpper(s[ind]) == False:
                    lower[(ord(s[ind]) - ord('a'))] = 1
                else:
                    upper[(ord(s[ind]) - ord('A'))] = 1
                    
                
                if self.checkNice(lower,upper) and (len(ans) < (ind+1 - index)):
                    ans = s[index:ind+1]
                    
                
        return ans
    
    def checkUpper(self, c: str) -> bool:
        return (ord(c) - ord('a')) < 0
    
    def checkNice(self, lower: list, upper: list) -> bool:
        
        for index, val in enumerate(lower):
            if ((val > 0) and (upper[index] <= 0)) or ((val <= 0) and (upper[index] > 0)):
                return False
                    
        return True
