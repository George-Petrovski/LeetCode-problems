import re


class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = re.sub(r'[^a-zA-Z0-9]', '', s).lower()
        for i in range(len(s)//2):
            if s[i] != s[-1-i]:
                return False
        return True
    
# class Solution:
#     def isPalindrome(self, s: str) -> bool:
#         l, r = 0, len(s) - 1

#         while l < r:
#             while l < r and not self.alphaNum(s[l]):
#                 l += 1
#             while l < r and not self.alphaNum(s[r]):
#                 r -= 1
#             if s[l].lower() != s[r].lower():
#                 return False
#             l, r = l+1, r-1

#         return True
            
#     def alphaNum(self, c):
#         return (ord('A') <= ord(c) <= ord('Z') or
#                 ord('a') <= ord(c) <= ord('z') or
#                 ord('0') <= ord(c) <= ord('9'))
