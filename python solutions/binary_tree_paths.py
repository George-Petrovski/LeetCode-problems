# Definition for a binary tree node.
from typing import List, Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        res = []

        def helper(node, curr):
            if not node:
                return
            if not node.left and not node.right:
                res.append(curr + [str(node.val)])
            else:
                helper(node.left, curr + [str(node.val)])
                helper(node.right, curr + [str(node.val)])
        
        helper(node=root, curr=[])
        return [*map('->'.join, res)]