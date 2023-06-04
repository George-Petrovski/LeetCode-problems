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
# @param {Float} target
# @return {Integer}
def closest_value(root, target)
    val = root.val

    if target < val && root.left
        left = closest_value(root.left, target)
        return left if val-target > (left-target).abs
        return [val, left].min if val-target == (left-target).abs
    elsif target > val && root.right
        right = closest_value(root.right, target)
        return right if target-val > (right-target).abs
        return [val, right].min if target-val == (right-target).abs
    end
    val
end