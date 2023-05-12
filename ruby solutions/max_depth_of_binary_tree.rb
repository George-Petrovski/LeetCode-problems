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
def max_depth(root)
    return dfs(root, 0)
end

def dfs(root, depth)
    return depth unless root
    return [dfs(root.left, depth + 1), dfs(root.right, depth + 1)].max
end