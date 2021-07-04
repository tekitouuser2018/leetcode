class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        
        ans = list(range(len(nums1)))

        for id, value in enumerate(nums1):

            index = nums2.index(value)
            
            for ind in range(index, len(nums2)):
                c = nums2[ind]
              
                if c > value:
                    ans[id] = c
                    break
                    
                if ind >= len(nums2)-1:
                    ans[id] = -1
                
        
        return ans
        
        
