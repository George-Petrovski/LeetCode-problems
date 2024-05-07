from math import trunc
from typing import List


class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        stack = []
        for i in tokens:
            if i == "+" or i == "-" or i == "*" or i == "/":
                if i == "+":
                    res = stack.pop()
                    res += stack.pop()
                elif i == "-":
                    res = stack.pop()
                    res = stack.pop() - res
                elif i == "*":
                    res = stack.pop()
                    res *= stack.pop()
                elif i == "/":
                    res = stack.pop()
                    res = trunc(stack.pop() / res)
                stack.append(res)
            else:
                i = int(i)
                stack.append(i)

        return stack.pop()