class Solution:
    def tribonacci(self, n: int) -> int:
        # memo = {0:0, 1:1, 2:1}
        
        # if n >= 3:
        #     for i in range(3, n+1):
        #         memo[i] = memo[i-1] + memo[i-2] + memo[i-3]
        
        # return memo[n]

        if n < 3:
            return 1 if n else 0
        
        a, b, c = 0, 1, 1
        for _ in range(n - 2):
            a, b, c = b, c, a + b + c
        return c