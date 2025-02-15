import DSACore

/**
You are given the heads of two sorted linked lists `list1` and `list2`.\
\
Merge the two lists into one _sorted_ list. The list should be made by splicing together the nodes of the first two lists.\
\
Return _the head of the merged linked list_.
- ID: 0021
- Problem: [Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)
- Difficulty: Easy
- Constraints:
    - The number of nodes in both lists is in the range `[0, 50]`.
    - `-100 <= Node.val <= 100`
    - Both `list1` and `list2` are sorted in _non-decreasing_ order.
- Topics:
    - Linked List
    - Recursion
*/
struct LeetCode0021 {
    struct Input {
        let list1: ListNode?
        let list2: ListNode?
    }
    
    struct Output: Equatable {
        let mergedList: ListNode?
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

protocol LeetCode0021Solution: FunctionExecuting
where Input == LeetCode0021.Input, Output == LeetCode0021.Output {}

/**
 - ID: 0021
 - Problem: Merge Two Sorted Lists
 - Solution: Iteration
 - Time complexity:
 - Space complexity:
 */
struct Pointer_LeetCode0021Solution: LeetCode0021Solution {
    static func execute(input: LeetCode0021.Input) -> LeetCode0021.Output {
        func mergeTwoLists(
            _ list1: LeetCode0021.ListNode?,
            _ list2: LeetCode0021.ListNode?
        ) -> LeetCode0021.ListNode? {
            let placeholderListNode = LeetCode0021.ListNode()
            var p = list1
            var b = list2
            var o: LeetCode0021.ListNode? = placeholderListNode
            
            while let q = p, let d = b {
                let dValueGreater = d.val > q.val
                
                p = dValueGreater ? q.next : q
                b = dValueGreater ? d : d.next
                
                o?.next = dValueGreater ? q : d
                o = o?.next
            }
            
            o?.next = p ?? b
            
            return placeholderListNode.next
        }
        
        return LeetCode0021.Output(
            mergedList: mergeTwoLists(input.list1, input.list2)
        )
    }
}

/**
 - ID: 0021
 - Problem: Merge Two Sorted Lists
 - Solution: Recursive
 - Time complexity:
 - Space complexity:
 */
struct Recursive_LeetCode0021Solution: LeetCode0021Solution {
    static func execute(input: LeetCode0021.Input) -> LeetCode0021.Output {
        func mergeTwoLists(
            _ list1: LeetCode0021.ListNode?,
            _ list2: LeetCode0021.ListNode?
        ) -> LeetCode0021.ListNode? {
            guard let p = list1 else { return list2 }
            guard let b = list2 else { return list1 }
            
            if p.val < b.val {
                p.next = mergeTwoLists(p.next, b)
                return p
            }
            else {
                b.next = mergeTwoLists(p, b.next)
                return b
            }
        }
        
        return LeetCode0021.Output(
            mergedList: mergeTwoLists(
                input.list1,
                input.list2
            )
        )
    }
}
