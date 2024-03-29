# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    dummy = ListNode.new(-1)
    dummy.next = head

    curr = dummy
    while curr.next != nil
        if curr.next.val == val
            curr.next = curr.next.next
        else
            curr = curr.next
        end
    end

    return dummy.next
end