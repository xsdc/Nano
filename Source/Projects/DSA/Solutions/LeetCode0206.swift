import DSACore

struct LeetCode0206 {
    struct Input {
        let head: ListNode?
    }

    struct Output: Equatable {
        let head: ListNode?
    }
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

protocol LeetCode0206Solution: FunctionExecuting where Input == LeetCode0206.Input, Output == LeetCode0206.Output {}

// Time complexity:
// Space complexity:

struct Pointers_LeetCode0206Solution: LeetCode0206Solution {
    static func execute(input: LeetCode0206.Input) -> LeetCode0206.Output {
        func reverseList(_ head: ListNode?) -> ListNode? {
            return nil
        }

        return LeetCode0206.Output(
            head: reverseList(input.head)
        )
    }
}
