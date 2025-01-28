import DSACore

protocol LeetCode0155MinStack: FunctionExecuting where Input == [Int], Output == [Int] {}

struct _LeetCode0155MinStack: LeetCode1929ConcatenationOfArray {
    static func execute(_ input: [Int]) -> [Int] {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            return nums + nums
        }
        
        return getConcatenation(input)
    }
}
