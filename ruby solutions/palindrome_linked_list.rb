# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    return true if head.nil?

    fast = slow = head

    while fast != nil && fast.next != nil
        fast = fast.next.next
        slow = slow.next
    end

    slow = reverse(slow)

    current = head
    while slow != nil
        return false if current.val != slow.val
        current = current.next
        slow = slow.next
    end
    true
end

def reverse(node)
    prev = nil
    nxt = nil
    while node != nil
        nxt = node.next
        node.next = prev
        prev = node
        node = nxt
    end
    prev
end