class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def reverse_list(head)
    cur = head
    minus = nil
    while cur != nil
        plus = cur.next
        cur.next = minus
        minus = cur
        cur = plus
    end
    return minus
end

reverse_list([1,2,3,4,5])
