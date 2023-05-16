# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    dummy = ListNode.new(val = 0, _next=head)
    prev = dummy
    while prev.next and prev.next.next
        prev.next.next.next, prev.next.next, prev.next, prev = prev.next, prev.next.next.next, prev.next.next, prev.next
    end
    return dummy.next
end