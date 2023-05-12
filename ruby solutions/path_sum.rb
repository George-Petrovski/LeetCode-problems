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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
    return false if !root
    return true if !root.left and !root.right and root.val == target_sum
    return has_path_sum(root.left, target_sum - root.val) || has_path_sum(root.right, target_sum - root.val)
end