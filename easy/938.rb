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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
@sum = 0
@low = 0
@high = 0
def range_sum_bst(root, low, high)

    @low = low
    @high = high
    search(root)
    
    return @sum
end


def search(root)

    num = root.val
  
    (num >= @low) && (num <= @high) ? @sum += num : 0

    
    if root.left != nil && root.left.val != nil
        search(root.left)
    end
    
    if root.right != nil && root.right.val != nil
        search(root.right)
    end
    
    return 
end
