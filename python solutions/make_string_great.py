class Solution:
    def makeGood(self, s: str) -> str:
        while len(s) > 1:
            find = False

            for i in range(len(s)-1):
                if abs(ord(s[i]) - ord(s[i+1])) == 32:
                    s = s[:i] + s[i+2:]
                    find = True
                    break
                
            if not find:
                break
        
        return s