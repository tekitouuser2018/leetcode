class Solution:
    def findWords(self, words: List[str]) -> List[str]:
        first = "qwertyuiop"
        second = "asdfghjkl"
        third = "zxcvbnm"
        ans = []
        for word in words:
            row = -1
            for index, char in enumerate(word.lower()):
                check = False
                ind = first.find(char)

                if (ind >= 0) and (row == -1 or row == 1):
                    check = True
                    row = 1
                ind = second.find(char)
           
                if (ind >= 0) and (row == -1 or row == 2):
                    check = True
                    row = 2
                ind = third.find(char)
          
                if (ind >= 0) and (row == -1 or row == 3):
                    check = True
                    row = 3
                    
                
                if check == False:
                    break
                if index == len(word)-1:
                    ans.append(word)
        
        return ans
                    
                
                
