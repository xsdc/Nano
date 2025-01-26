import DSACore

public protocol LeetCode509FibonacciNumberSolution: FunctionExecuting where Input == Int, Output == Int {}

public struct RecursiveA_LeetCode509FibonacciNumberSolution: LeetCode509FibonacciNumberSolution {
    public static func execute(_ input: Int) -> Int {
        func fn(_ n: Int) -> Int {
            if n == 0 { return 0 }
            if n == 1 { return 1 }
            return fn(n - 1) + fn(n - 2)
        }
        
        return fn(input)
    }
}

public struct RecursiveN_LeetCode509FibonacciNumberSolution: LeetCode509FibonacciNumberSolution {
    public static func execute(_ input: Int) -> Int {
        func fibonacci(_ n: Int) -> Int {
            if n <= 1 { return n }
            return fibonacci(n - 1) + fibonacci(n - 2)
        }
        
        return fibonacci(input)
    }
}
