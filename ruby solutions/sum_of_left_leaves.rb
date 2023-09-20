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
def sum_of_left_leaves(root)
    return 0 if root.nil?
  
    if root.left && root.left.left.nil? && root.left.right.nil?
      return root.left.val + sum_of_left_leaves(root.right)
    else
      return sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
    end
  end