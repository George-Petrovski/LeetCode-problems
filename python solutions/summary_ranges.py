from typing import List


class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        res = []
        rg = False
        curr = ""
        for i in range(len(nums)):
            if curr == "":
                curr = str(nums[i])
            
            if i+1 < len(nums) and nums[i+1] == nums[i] + 1:
                if rg == False:
                    curr += "->"
                    rg = True
            else: 
                if rg == True:
                    curr += str(nums[i])
                rg = False
                res.append(curr)
                curr = ""
            
        return res