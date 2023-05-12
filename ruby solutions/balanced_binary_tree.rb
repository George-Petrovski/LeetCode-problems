# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    H(root) >= 0
end

def H(root)
    return 0 if !root
    l, r = H(root.left), H(root.right)
    return -1 if l < 0 or r < 0 or (l-r).abs > 1
    [l, r].max + 1
end