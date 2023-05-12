from typing import List


class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        rows = []
        if numRows > 0: rows.append([1])
        if numRows > 1: rows.append([1, 1])
        for i in range(3, numRows+1):
            temp = [1]
            for j in range(i-2):
                temp.append(rows[i-2][j] + rows[i-2][j+1])
            temp.append(1)
            rows.append(temp)
        return rows