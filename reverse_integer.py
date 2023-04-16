class Solution:
    def reverse(self, x: int) -> int:
        isN = False
        if x < 0:
            isN = True
            x = -x

        s = str(x)
        reversedS = ''

        for i in reversed(range(len(s))):
            reversedS += s[i]
        
        reversedI = int(reversedS)

        if isN:
            reversedI = -reversedI
        
        if reversedI < -2**31 or reversedI > 2**31 -1:
            return 0

        return reversedI