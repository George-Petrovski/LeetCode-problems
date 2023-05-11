class Solution:
    def addBinary(self, a: str, b: str) -> str:
        res = []
        carry = 0
        len_a = len(a)-1
        len_b = len(b)-1

        while len_a >= 0 or len_b >= 0 or carry:
            if len_a >= 0:
                carry += int(a[len_a])
                len_a -= 1
            if len_b >= 0:
                carry += int(b[len_b])
                len_b -= 1
            res.append(str(carry % 2))
            carry //= 2
        
        return ''.join(reversed(res))