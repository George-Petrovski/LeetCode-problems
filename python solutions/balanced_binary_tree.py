# Definition for a binary tree node.
from typing import Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def isBalanced(self, root: Optional[TreeNode]) -> bool:
        return (self.Height(root) >= 0)
    def Height(self, root) -> int:
        if root is None: return 0
        l, r = self.Height(root.left), self.Height(root.right)
        if l < 0 or r < 0 or abs(l - r) > 1: return -1
        return max(l, r) + 1