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
def delete_duplicates(head)
    curr = head
    while curr
        while curr.next and curr.next.val == curr.val
                curr.next = curr.next.next
        end
        curr = curr.next
    end
    return head
end