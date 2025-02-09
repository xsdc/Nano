import DSACore

/**
 Design your implementation of the linked list. You can choose to use a singly or doubly linked list.\
 \
 A node in a singly linked list should have two attributes: `val` and `next`. `val` is the value of the current node, and `next` is a pointer/reference to the next node.\
 \
 If you want to use the doubly linked list, you will need one more attribute `prev` to indicate the previous node in the linked list. Assume all nodes in the linked list are _0-indexed_.
 
 Implement the `MyLinkedList` class:
 - `MyLinkedList()` Initializes the `MyLinkedList` object.
 - `int get(int index)` Get the value of the `index^th` node in the linked list. If the index is invalid, return `-1`.
 - `void addAtHead(int val)` Add a node of value `val` before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
 - `void addAtTail(int val)` Append a node of value `val` as the last element of the linked list.
 - `void addAtIndex(int index, int val)` Add a node of value val before the `index^th` node in the linked list. If index equals the length of the linked list, the node will be appended to the end of the linked list. If index is greater than the length, the node _will not be inserted_.
 - `void deleteAtIndex(int index)` Delete the `index^th` node in the linked list, if the index is valid.
 - ID: 0707
 - Problem: [Design Linked List](https://leetcode.com/problems/design-linked-list/)
 - Difficulty: Easy
 - Constraints:
     - `0 <= index, val <= 1000`
     - Please do not use the built-in LinkedList library.
     - At most `2000` calls will be made to `get`, `addAtHead`, `addAtTail`, `addAtIndex` and `deleteAtIndex`.
 - Topics:
     - Linked List
     - Design
 */
struct LeetCode0707 {
    typealias LeetCode = LeetCode0707
    
    struct Input {
        enum Operations {
            case get
            case addAtHead
            case addAtTail
            case addAtIndex
            case deleteAtIndex
        }
        
        let operations: [Operations]
    }
    
    struct Output: Equatable {
        let linkedList: [[Int]]
    }
    
    protocol Function: FunctionExecuting where Input == LeetCode.Input, Output == LeetCode.Output {}
    
    struct Solution {
        /**
         - ID: 0707
         - Problem: Design Linked List
         - Solution:
         - Time complexity:
         - Space complexity:
         */
        struct Pointer: Function {
            static func execute(input: LeetCode.Input) -> LeetCode.Output {
                var linkedList = [[Int]]()
                
                return Output(
                    linkedList: linkedList
                )
            }
        }
    }
}
