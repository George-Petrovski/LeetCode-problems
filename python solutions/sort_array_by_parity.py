from collections import deque
from typing import List


class Solution:
    def sortArrayByParity(self, nums: List[int]) -> List[int]:
        res = deque()
        for i in nums:
            if i % 2 == 0:
                res.appendleft(i)
            else:
                res.append(i)
            
        return res