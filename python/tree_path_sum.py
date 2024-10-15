class Solution:
    def hasPathSum(self, root: Optional[TreeNode], targetSum: int) -> bool:

        def depthFirstSeach(node, currentSum):
            if not node:
                return False
            
            currentSum += node.val
            if not node.left and not node.right:
                return currentSum == targetSum
            
            return (depthFirstSeach(node.left, currentSum) or depthFirstSeach(node.right, currentSum))
        
        return depthFirstSeach(root, 0)