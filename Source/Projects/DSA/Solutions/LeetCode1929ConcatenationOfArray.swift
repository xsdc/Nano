import DSACore

protocol LeetCode1929ConcatenationOfArray: FunctionExecuting where Input == [Int], Output == [Int] {}

struct _LeetCode1929ConcatenationOfArray: LeetCode1929ConcatenationOfArray {
    static func execute(_ input: [Int]) -> [Int] {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            return []
        }
        
        return getConcatenation(input)
    }
}
