class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        dict = {}
        left = 0
        right = 0

        counter = 0

        while left < len(s) and right < len(s):
            char = s[right]
            if char in dict:
                left = max(left, dict[char] + 1)
            dict[char] = right
            counter = max(counter, right - left + 1)
            right += 1

        return counter