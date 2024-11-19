class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:

        def dfs(left, right):
            if not left and not right:
                return True
            if not left or not right:
                return False
            
            return (left.val == right.val and
                    dfs(left.left, right.right) and 
                    dfs(right.left, left.right))
        
        return dfs(root.left, root.right)