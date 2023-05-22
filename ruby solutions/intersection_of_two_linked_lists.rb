# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
    curr = headA
    while curr
        curr.val = -curr.val
        curr = curr.next
    end
    while headB
        break if headB.val < 0
        headB = headB.next
    end
    while headA
        headA.val = -headA.val
        headA = headA.next
    end
    headB
end