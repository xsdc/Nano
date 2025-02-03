import DSACore

struct LeetCode0155Input {
    enum MinStackOperation {
        case push(Int)
        case pop
    }
    
    let operations: [MinStackOperation]
}

struct LeetCode0155Output: Equatable  {
    let stack: [Int]
    let top: Int?
    let min: Int?
}

protocol LeetCode0155MinStack: FunctionExecuting where Input == LeetCode0155Input, Output == LeetCode0155Output {}

struct Array_LeetCode0155MinStack: LeetCode0155MinStack {
    static func execute(_ input: LeetCode0155Input) -> LeetCode0155Output {
        let minStack = MinStack()
        
        for operation in input.operations {
            switch operation {
            case .push(let val): minStack.push(val)
            case .pop: minStack.pop()
            }
        }
        
        return LeetCode0155Output(
            stack: minStack.valStack,
            top: minStack.top(),
            min: minStack.getMin()
        )
    }
    
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
}
