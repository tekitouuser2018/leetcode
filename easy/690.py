"""
# Definition for Employee.
class Employee:
    def __init__(self, id: int, importance: int, subordinates: List[int]):
        self.id = id
        self.importance = importance
        self.subordinates = subordinates
"""

class Solution:
    def getImportance(self, employees: List['Employee'], id: int) -> int:
        sub = []
        for i in employees:
            
            if i.id == id:
                amount = i.importance
                sub += (i.subordinates)
                break
        
        while len(sub) > 0:
            q = sub.pop(0)
            
            for i in employees:
                if i.id == q:
                    amount += i.importance
                    sub += (i.subordinates)
                    
                    break
                
        return amount
            
        
