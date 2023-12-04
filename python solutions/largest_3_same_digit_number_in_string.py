class Solution:
    def largestGoodInteger(self, num: str) -> str:
        n = -1
        l = r = 0
        while r < len(num):
            if num[l] != num[r]:
                l = r
                r += 1
            else:
                if r - l == 2:
                    n = max(n, int(num[r]))
                    l = r + 1
                    r = l + 1
                else:
                    r += 1

        return "" if n == -1 else f"{n}" * 3