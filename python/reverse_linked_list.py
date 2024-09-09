class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def reverseList(head):
        cur = head # 1
        minus = None
        while cur:
            plus = cur.next
            cur.next = minus # nil
            minus = cur # 1
            cur = plus # 2

        return minus

Solution.reverseList([1,2,3,4,5])