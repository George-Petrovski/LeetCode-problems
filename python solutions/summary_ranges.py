from typing import List

class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        res = []
        
        i = 0
        while i < len(nums):
            s = e = i
            while e + 1 < len(nums) and nums[e] + 1 == nums[e+1]:
                e += 1
            if s == e:
                res.append(f'{nums[s]}')
            else:
                res.append(f'{nums[s]}->{nums[e]}')
            i = e + 1
            
        return res

# class Solution:
#     def summaryRanges(self, nums: List[int]) -> List[str]:
#         res = []
#         rg = False
#         curr = ""
#         for i in range(len(nums)):
#             if curr == "":
#                 curr = str(nums[i])
            
#             if i+1 < len(nums) and nums[i+1] == nums[i] + 1:
#                 if rg == False:
#                     curr += "->"
#                     rg = True
#             else: 
#                 if rg == True:
#                     curr += str(nums[i])
#                 rg = False
#                 res.append(curr)
#                 curr = ""
            
#         return res