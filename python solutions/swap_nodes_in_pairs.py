# Definition for singly-linked list.
from typing import Optional


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
class Solution:
    def swapPairs(self, head: Optional[ListNode]) -> Optional[ListNode]:
        dummy = ListNode(next=head)
        prev = dummy
        while prev.next and prev.next.next:
            prev.next.next.next, prev.next.next, prev.next, prev = prev.next, prev.next.next.next, prev.next.next, prev.next
        return dummy.next