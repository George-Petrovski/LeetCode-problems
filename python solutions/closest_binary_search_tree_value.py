# Definition for a binary tree node.
from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def closestValue(self, root: Optional[TreeNode], target: float) -> int:
        val = root.val

        if target < val and root.left:
            left = self.closestValue(root.left, target)
            if val - target > abs(left-target): return left
            elif val - target == abs(left-target): return min(val, left)
        elif target > val and root.right:
            right = self.closestValue(root.right, target)
            if target - val > abs(right - target): return right
            elif target - val == abs(right - target): return min(val, right)

        return val