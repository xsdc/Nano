import DSACore

struct LeetCode0206 {
    struct Input {
        let nums: [Int]
    }

    struct Output: Equatable {
        let nums: [Int]
        let length: Int
    }
}

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

protocol LeetCode0206Solution: FunctionExecuting where Input == LeetCode0206.Input, Output == LeetCode0206.Output {}

// Time complexity:
// Space complexity:

struct Pointers_LeetCode0206Solution: LeetCode0206Solution {
    static func execute(input: LeetCode0206.Input) -> LeetCode0206.Output {
        func reverseList(_ head: ListNode?) -> ListNode? {
            
        }

        
        return LeetCode0206.Output(
            nums: mutableInput,
            length: length
        )
    }
}
