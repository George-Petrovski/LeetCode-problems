from typing import List


class Solution:
    def maxSatisfied(self, customers: List[int], grumpy: List[int], minutes: int) -> int:
        # min_satisfied = sum([customers[i] * (not grumpy[i]) for i in range(len(grumpy))])
        min_satisfied = 0

        max_power_satisfied = 0
        for i in range(minutes):
            max_power_satisfied += customers[i] if grumpy[i] else 0
            min_satisfied += customers[i] if (not grumpy[i]) else 0
        
        curr_power_satisfies = max_power_satisfied
        for i in range(minutes, len(grumpy)):
            min_satisfied += customers[i] if (not grumpy[i]) else 0
            curr_power_satisfies += customers[i] if grumpy[i] else 0
            curr_power_satisfies -= customers[i-minutes] if grumpy[i-minutes] else 0
            if max_power_satisfied < curr_power_satisfies:
                max_power_satisfied = curr_power_satisfies
        
        return min_satisfied + max_power_satisfied
