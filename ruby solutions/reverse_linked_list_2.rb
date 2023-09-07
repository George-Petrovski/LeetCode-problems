# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
    prehead = ListNode.new(0, head)
    prev, curr = prehead, head

    (left - 1).times { prev, curr = curr, curr.next } # set pointers

    node = prev
    (right-left+1).times { curr.next, prev, curr = prev, curr, curr.next } # reverse list

    node.next.next, node.next = curr, prev # attach nodes
    prehead.next
end