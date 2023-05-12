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
def is_symmetric(root)
    return true unless root
    isSame(root.left, root.right)
end

def isSame(leftroot, rightroot)
    return true if leftroot.nil? && rightroot.nil?
    return false if leftroot&.val != rightroot&.val
    isSame(leftroot.left, rightroot.right) and self.isSame(leftroot.right, rightroot.left)
end