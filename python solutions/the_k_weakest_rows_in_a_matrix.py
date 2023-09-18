from typing import List


class Solution:
    def kWeakestRows(self, mat: List[List[int]], k: int) -> List[int]:
        row_strength = [(sum(row), i) for i, row in enumerate(mat)]
        row_strength.sort(key=lambda x: (x[0], x[1]))
        return [row[1] for row in row_strength[:k]]
        # dic = {}
        # ans = []
        # for idx, strength in enumerate(mat):
        #     dic[idx] = sum(strength)

        # dic = sorted(dic.items(), key=lambda x:x[1])
        # for i in range(k):
        #     ans.append(dic[i][0])

        # return ans