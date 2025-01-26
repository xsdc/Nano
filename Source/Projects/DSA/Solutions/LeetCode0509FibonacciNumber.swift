import DSACore

protocol LeetCode0509FibonacciNumber: FunctionExecuting where Input == Int, Output == Int {}

struct RecursiveA_LeetCode0509FibonacciNumber: LeetCode0509FibonacciNumber {
    static func execute(_ input: Int) -> Int {
        func fn(_ n: Int) -> Int {
            if n == 0 { return 0 }
            if n == 1 { return 1 }
            return fn(n - 1) + fn(n - 2)
        }
        
        return fn(input)
    }
}

struct RecursiveN_LeetCode0509FibonacciNumber: LeetCode0509FibonacciNumber {
    static func execute(_ input: Int) -> Int {
        func fibonacci(_ n: Int) -> Int {
            if n <= 1 { return n }
            return fibonacci(n - 1) + fibonacci(n - 2)
        }
        
        return fibonacci(input)
    }
}
