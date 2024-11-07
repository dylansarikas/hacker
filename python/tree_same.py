class Solution:
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        result = []

        def inorder(root):
            if not root:
                result.append("null")
                return
            inorder(root.left)
            result.append(root.val)
            inorder(root.right)

        inorder(p)
        result_p = result
        result = []
        inorder(q)
        result_q = result

        return True if result_p == result_q else False