import DSACore

protocol LeetCode0509FibonacciNumber: FunctionExecuting where Input == Int, Output == Int {}

struct Recursive_LeetCode0509FibonacciNumber: LeetCode0509FibonacciNumber {
    static func execute(_ input: Int) -> Int {
        func fib(_ n: Int) -> Int {
            if n <= 1 { return n }
            return fib(n - 1) + fib(n - 2)
        }
        
        return fib(input)
    }
}

struct RecursiveExplicit_LeetCode0509FibonacciNumber: LeetCode0509FibonacciNumber {
    static func execute(_ input: Int) -> Int {
        func fn(_ n: Int) -> Int {
            if n == 0 { return 0 }
            if n == 1 { return 1 }
            return fn(n - 1) + fn(n - 2)
        }
        
        return fn(input)
    }
}
