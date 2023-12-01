from typing import List


class Solution:
    def twoSumLessThanK(self, nums: List[int], k: int) -> int:
        nums.sort()
        i, j = 0, len(nums)-1
        m = -1

        while i<j:
            if nums[i]+nums[j]>=k: j-=1
            else: m=max(nums[i]+nums[j], m); i+=1; 
        return m