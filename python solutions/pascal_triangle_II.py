from typing import List


class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        pascal = [[1],[1,1]]
        if rowIndex > 1:
            for i in range(3, rowIndex+2):
                row = [1]
                for j in range(i-2):
                    row.append(pascal[i-2][j] + pascal[i-2][j+1])
                row.append(1)
                pascal.append(row)
                
        return pascal[rowIndex]