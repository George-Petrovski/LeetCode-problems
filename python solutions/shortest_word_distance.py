from typing import List


class Solution:
    def shortestDistance(self, wordsDict: List[str], word1: str, word2: str) -> int:
        short_d = len(wordsDict)
        s = e = -1
        for i in range(len(wordsDict)):
            if wordsDict[i] == word1: s = i
            if wordsDict[i] == word2: e = i
            if s != -1 and e != -1: short_d = min(short_d, abs(s-e))
        return short_d