# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
require 'set'
def hasCycle(head)
    node_set = Set.new()
    while(head)
        if node_set.include? head
            return true
        end
        node_set.add(head)
        head = head.next
    end
    return false
end