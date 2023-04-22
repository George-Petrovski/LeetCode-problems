from typing import List
class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        maxWealth = 0
        for i in range(len(accounts)):
            totalWealth = sum(accounts[i])
            maxWealth = max(maxWealth, totalWealth)
        return maxWealth
        #return max(sum(acc) for acc in accounts)