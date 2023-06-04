class Solution:
    def canPermutePalindrome(self, s: str) -> bool:
        odd = (False if len(s) % 2 == 0 else True)
        for i in range(len(s)):
            if s.count(s[i]) % 2 == 0 or s.count(s[i]) % 3 == 0: continue
            if s.count(s[i]) % 2 == 1 and odd:
                odd = False
                continue
            return False
    
        return True