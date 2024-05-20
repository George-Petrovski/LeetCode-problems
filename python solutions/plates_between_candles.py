from typing import List


class Solution:
    def platesBetweenCandles(self, s: str, queries: List[List[int]]) -> List[int]:
        candles = [i for i, c in enumerate(s) if c == "|"]
        
        def bns(x: int) -> int:
            l, r = 0, len(candles) - 1
            while l <= r:
                m = (l + r) // 2
                if candles[m] < x: l = m + 1
                else: r = m - 1
            return l

        ans = []
        for a, b in queries:
            l, r = bns(a), bns(b + 1) - 1
            ans.append(candles[r] - candles[l] - (r - l) if l < r else 0)
        return ans