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
# @return {Integer[]}
def inorder_traversal(root)
    stack = []
    res = []

    while root || (!stack.empty?)
        if root
            stack.push(root)
            root = root.left
        else
            root = stack.pop
            res.push(root.val)
            root = root.right
        end
    end
    res
end