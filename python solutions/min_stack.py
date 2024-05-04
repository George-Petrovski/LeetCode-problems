class MinStack:

    def __init__(self):
        self.stack = []
        self.stackMin = []

    def push(self, val: int) -> None:
        self.stack.append(val)
        if self.stackMin:
            self.stackMin.append(min(self.stackMin[-1], val))
        else:
            self.stackMin.append(val)

    def pop(self) -> None:
        self.stack.pop()
        self.stackMin.pop()
        
    def top(self) -> int:
        return self.stack[-1]

    def getMin(self) -> int:
        return self.stackMin[-1]


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()