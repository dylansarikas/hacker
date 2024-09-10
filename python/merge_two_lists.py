class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def mergeTwoLists(list1, list2):
        first = ListNode()
        tail = first

        while list1 is not None and list2 is not None:
            if list1.val <= list2.val:
                tail.next = list1
                list1 = list1.next
            else:
                tail.next = list2
                list2 = list2.next

            tail = tail.next

        if list1 is not None:
            tail.next = list1
        elif list2 is not None:
            tail.next = list2

        return first.next


        