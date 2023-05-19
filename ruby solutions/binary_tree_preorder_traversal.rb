# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    def dfs(node)
        return if !node
        @ans.append(node.val)
        
        dfs(node.left)
        dfs(node.right)

        return
    end
    @ans = []
    dfs(root)
    return @ans
end