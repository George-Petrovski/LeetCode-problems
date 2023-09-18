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
# @return {Integer}
def path_sum(root, target_sum)
    @count = 0
    @prefix_sum = {0 => 1}
    dfs(root, target_sum, 0)
    @count
end

def dfs(node, target_sum, curr_sum)
    return if node == nil

    curr_sum += node.val

    @count += @prefix_sum[curr_sum - target_sum].to_i
    @prefix_sum[curr_sum] = @prefix_sum[curr_sum].to_i + 1

    dfs(node.left, target_sum, curr_sum)
    dfs(node.right, target_sum, curr_sum)

    @prefix_sum[curr_sum] -= 1
end