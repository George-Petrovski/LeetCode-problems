from typing import List


class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        w_flip = wo_flip = 0
        max_1 = 0
        for i in nums:
            if i == 1:
                w_flip += 1
                wo_flip += 1
            else:
                w_flip = wo_flip + 1
                wo_flip = 0
            max_1 = max(max_1, wo_flip, w_flip)
            
        return max_1