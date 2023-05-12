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
# @return {Integer}
def min_depth(root)
    return 0 if root == nil
    l = min_depth(root.left)
    r = min_depth(root.right)
    return 1 if !root.left && !root.right
    return 1 + r if !root.left
    return 1 + l if !root.right
    return [l, r].min + 1
end