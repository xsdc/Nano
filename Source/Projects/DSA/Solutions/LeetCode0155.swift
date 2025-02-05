import DSACore

struct LeetCode0155  {
    struct Input {
        enum MinStackOperation {
            case push(Int)
            case pop
        }

        let operations: [MinStackOperation]
    }

    struct Output: Equatable  {
        let stack: [Int]
        let top: Int?
        let min: Int?
    }
}

protocol LeetCode0155Solution: FunctionExecuting where Input == LeetCode0155.Input, Output == LeetCode0155.Output {}

// Time complexity:
// Space complexity:

struct Array_LeetCode0155Solution: LeetCode0155Solution {
    static func execute(_ input: LeetCode0155.Input) -> LeetCode0155.Output {
        class MinStack {
            var valStack: [Int]
            var minStack: [Int]

            init() {
                valStack = [Int]()
                minStack = [Int]()
            }

            func push(_ val: Int) {
                valStack.append(val)

                guard let last = minStack.last else {
                    return minStack.append(val)
                }
                let min = min(val, last)

                minStack.append(min)
            }

            func pop() {
                valStack.removeLast()
                minStack.removeLast()
            }

            func top() -> Int {
                guard let last = valStack.last else {
                    return 0
                }

                return last
            }

            func getMin() -> Int {
                guard let lastMin = minStack.last else {
                    return 0
                }

                return lastMin
            }
        }
        
        let minStack = MinStack()

        for operation in input.operations {
            switch operation {
            case .push(let val): minStack.push(val)
            case .pop: minStack.pop()
            }
        }

        return LeetCode0155.Output(
            stack: minStack.valStack,
            top: minStack.top(),
            min: minStack.getMin()
        )
    }
}
