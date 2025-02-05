import DSACore

/**
 *Given the `head` of a singly linked list, reverse the list, and return the __reversed list__.*
 - ID: 0206
 - Problem: Reverse Linked List
 - Difficulty: Easy
 - Constraints:
    - The number of nodes in the list is the range `[0, 5000]`.
    - `-5000 <= Node.val <= 5000`
 - Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?
 - Topics:
    - Linked List
    - Recursion
 */
struct LeetCode0206 {
    struct Input {
        let head: ListNode?
    }

    struct Output: Equatable {
        let head: ListNode?
    }
    
    class ListNode: Equatable {
        var val: Int
        var next: ListNode?
        init() { self.val = 0; self.next = nil; }
        init(_ val: Int) { self.val = val; self.next = nil; }
        init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
        
        static func == (lhs: ListNode, rhs: ListNode) -> Bool {
            return lhs.val == rhs.val && lhs.next == rhs.next
        }
    }
}

protocol LeetCode0206Solution: FunctionExecuting
where Input == LeetCode0206.Input, Output == LeetCode0206.Output {}

/**
 - ID: 0206
 - Problem: Reverse Linked List
 - Solution: Pointer
 - Time complexity: O(n)
 - Space complexity:
 */
struct Pointer_LeetCode0206Solution: LeetCode0206Solution {
    static func execute(input: LeetCode0206.Input) -> LeetCode0206.Output {
        func reverseList(_ head: LeetCode0206.ListNode?) -> LeetCode0206.ListNode? {
            var p: LeetCode0206.ListNode? = nil
            var o: LeetCode0206.ListNode? = head
            var q: LeetCode0206.ListNode? = head?.next
            
            while o != nil {
                q = o?.next
                
                o?.next = p
                
                p = o
                o = q
            }
            
            return p
        }

        return LeetCode0206.Output(
            head: reverseList(input.head)
        )
    }
}

/**
 - ID: 0206
 - Problem: Reverse Linked List
 - Solution: Recursive
 - Time complexity:
 - Space complexity:
 */
struct Recursive_LeetCode0206Solution: LeetCode0206Solution {
    static func execute(input: LeetCode0206.Input) -> LeetCode0206.Output {
        func reverseList(_ head: LeetCode0206.ListNode?) -> LeetCode0206.ListNode? {
            if head == nil || head?.next == nil {
                return head
            }
            
            let q = reverseList(head?.next)
            head?.next?.next = head
            head?.next = nil
            
            return q
        }

        return LeetCode0206.Output(
            head: reverseList(input.head)
        )
    }
}
