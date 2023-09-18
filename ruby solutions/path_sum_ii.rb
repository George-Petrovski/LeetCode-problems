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
# @return {Integer[][]}
def path_sum(root, target_sum)
    ans = []
    dfs(root, [], ans, target_sum)
    return ans
end

def dfs(root, path, ans, remaining_sum)
    return if root == nil
    
    path << root.val

    ans << path.dup if root.left == nil && root.right == nil && remaining_sum == root.val  

    dfs(root.left, path, ans, remaining_sum - root.val)
    dfs(root.right, path, ans, remaining_sum - root.val)

    path.pop
end