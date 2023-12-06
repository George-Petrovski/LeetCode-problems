class Solution:
    def totalMoney(self, n: int) -> int:
        tot = 0
        week_tot = 28
        weeks = n // 7
        days = n % 7

        tot += weeks * week_tot

        if weeks > 1:
          tot += (7 * weeks *( weeks - 1))//2

        for i in range(1, days+1):
            tot += weeks + i

        return tot