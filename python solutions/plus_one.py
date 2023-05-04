from typing import List
class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        carryover = 1

        for i, val in reversed(list(enumerate(digits))):
            sum = val + carryover
            carryover = sum // 10
            digits[i] = sum % 10

        if carryover:
            digits.insert(0, 1)

        return digits