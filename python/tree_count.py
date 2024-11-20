class Solution:
    def countNodes(self, root: Optional[TreeNode]) -> int:
        result = 0

        def inorder(root):
            if not root:
                return
            inorder(root.left)
            result += 1
            inorder(root.right)

        inorder(root)
        return result