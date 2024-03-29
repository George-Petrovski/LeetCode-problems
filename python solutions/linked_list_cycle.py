# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

from typing import Optional


class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        node_set = set()
        while(head):
            if head in node_set:
                return True
            node_set.add(head)
            head = head.next
        return False