from functools import reduce, mul
import math


class Solution:
    def countOrders(self, n: int) -> int:
        cap = 10**9 + 7
        pickup_permutation = math.factorial(n) % cap
        delivery_permutation = reduce(mul, range(1, 2*n, 2), 1) % cap
        return pickup_permutation * delivery_permutation % cap