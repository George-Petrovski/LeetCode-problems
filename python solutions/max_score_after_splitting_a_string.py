class Solution:
    def maxScore(self, s: str) -> int:
        res = float('-inf')

        for i in range(1, len(s)):
            left = s[:i]
            right = s[i:]
            res = max(res, (left.count("0") + right.count("1")))

        return res