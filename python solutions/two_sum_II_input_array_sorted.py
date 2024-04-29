from typing import List


class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        l, r = 0, len(numbers)-1

        while l < r:
            curr_sum = numbers[l] + numbers[r]
            if target == curr_sum:
                return [l+1, r+1]
            elif curr_sum > target:
                r -= 1
            elif curr_sum < target:
                l += 1