from typing import List


class Solution:
    def findMissingRanges(self, nums: List[int], lower: int, upper: int) -> List[List[int]]:
        res = []
        if not nums: return [[lower, upper]]
        if nums[0] > lower:
            res.append([lower, nums[0] - 1])
        if len(nums) > 0:
            prev = nums[0]
            for i in range(0, len(nums)):
                if nums[i] - prev > 1:
                    res.append([nums[i-1] + 1, nums[i] - 1])
                prev = nums[i]

        if nums[-1] < upper:
            res.append([nums[-1] + 1, upper])
        return res