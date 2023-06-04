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
# @return {String[]}
def binary_tree_paths(root)
    @res = []
    helper(node=root, curr=[])
    
    return @res.map{ |a| a.join("->") }
end

def helper(node, curr)
    return if !node
    if !node.left && !node.right
        @res.append(curr + [node.val.to_s])
    else
        helper(node.left, curr + [node.val.to_s])
        helper(node.right, curr + [node.val.to_s])
    end
end