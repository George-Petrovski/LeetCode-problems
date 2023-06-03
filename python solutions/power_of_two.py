from math import ceil, floor, log2


class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n <= 0: return False
        return ceil(log2(n)) == floor(log2(n))