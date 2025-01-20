public protocol FibonacciProblem: FunctionExecuting where Input == Int, Output == Int {}

public struct FibonacciRecursive: FibonacciProblem {
    public static func execute(_ input: inout Int) -> Int {
        func fibonacci(_ n: Int) -> Int {
            if n <= 1 { return n }
            return fibonacci(n - 1) + fibonacci(n - 2)
        }
        return fibonacci(input)
    }
}

public struct FibonacciDynamic: FibonacciProblem {
    public static func execute(_ input: inout Int) -> Int {
        if input <= 1 { return input }
        var a = 0
        var b = 1
        for _ in 2...input {
            let temp = a + b
            a = b
            b = temp
        }
        return b
    }
}
