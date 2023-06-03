class Solution:
    def isStrobogrammatic(self, num: str) -> bool:
        if not num: return False
        pr = { "8": "8", "9": "6", "6": "9", "1": "1", "0": "0" }
        for i in range(len(num)//2 + 1):
            if num[i] not in pr or num[~i] != pr[num[i]]:
                return False
        return True