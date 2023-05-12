# Definition for a binary tree node.
from typing import List, Optional
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        def rec(start, end) -> Optional[TreeNode]:
            if start <= end:
                mid = (start + end) // 2
                node = TreeNode(nums[mid])
                node.left = rec(start, mid - 1)
                node.right = rec(mid + 1, end)
                return node
        return rec(0, len(nums) - 1)