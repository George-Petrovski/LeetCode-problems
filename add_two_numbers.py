# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """

        carry = 0
        result = ListNode(0)
        pointer = result

        while l1 or l2 or carry:
            num1 = l1.val if l1 else 0
            num2 = l2.val if l2 else 0

            sum = num1 + num2 + carry
            num = sum % 10
            carry = sum // 10

            pointer.next = ListNode(num)
            pointer = pointer.next

            l1 = l1.next if l1 else None
            l2 = l2.next if l2 else None

        return result.next