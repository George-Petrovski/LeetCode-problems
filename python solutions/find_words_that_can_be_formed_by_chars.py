from typing import Counter, List


class Solution:
    def countCharacters(self, words: List[str], chars: str) -> int:
        res = 0
        def can_form(word, chars):
            char_count = Counter(chars)
            for char in word:
                if char_count[char] <= 0:
                    return False
                char_count[char] -= 1
            return True

        for word in words:
            if can_form(word, chars):
                res += len(word)

        return res