from typing import List


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        if not prices: return 0

        maxP = 0
        minP = prices[0]
        for i in range(1, len(prices)):
            maxP = max(maxP, prices[i] - minP)
            minP = min(minP, prices[i])
        return maxP