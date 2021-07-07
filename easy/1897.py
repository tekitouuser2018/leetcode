from collections import Counter

class Solution:
    def makeEqual(self, words: List[str]) -> bool:
        num = 0
        dic = Counter()
        for word in words:
            for w in word:
                dic[w] += 1
                num = dic[w]
        
        length = len(words)
        if length == 1:
            return True
        if int(num/length) == 0:
            return False
        for charNum in dic.values():
            
            if (charNum%length != num%length) or (charNum/length == 0) or (int(charNum/length) == 0):
                # print(charNum)
                # print(num)
                return False

            
        return True
