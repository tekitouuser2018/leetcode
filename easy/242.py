from collections import Counter



class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        tDic = Counter()
        for c in t:
            tDic[c] += 1
        
        for c in s:
            if tDic[c] > 0:
                tDic[c] -= 1
            else:
                return False
        # print({k:v for k,v in tDic.items() if v > 0})
        return {k:v for k,v in tDic.items() if v > 0} == {}
        
