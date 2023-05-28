class Solution:
    def titleToNumber(self, columnTitle: str) -> int:
        count = 0
        for i in range(len(columnTitle)):
            if i == 0:
                count += (ord(columnTitle[-1-i]) - 64)
            else:
                count += (ord(columnTitle[-1-i]) - 64) * 26 ** i
        return count