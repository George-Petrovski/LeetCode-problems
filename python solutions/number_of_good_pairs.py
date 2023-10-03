from typing import List


class Solution:
    def numIdenticalPairs(self, nums: List[int]) -> int:
        d={}
        res = 0
        for v in nums:
            if v not in d:
                d[v] = 1
            else:
                res += d[v]
                d[v] += 1

        return res
