import DSACore

protocol LeetCode1929ConcatenationOfArray: FunctionExecuting where Input == [Int], Output == [Int] {}

struct Operator_LeetCode1929ConcatenationOfArray: LeetCode1929ConcatenationOfArray {
    static func execute(_ input: [Int]) -> [Int] {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            return nums + nums
        }
        
        return getConcatenation(input)
    }
}

struct Nested_LeetCode1929ConcatenationOfArray: LeetCode1929ConcatenationOfArray {
    static func execute(_ input: [Int]) -> [Int] {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            var array = [Int]()
            
            for _ in 0...1 {
                for num in nums {
                    array.append(num)
                }
            }
            
            return array
        }
        
        return getConcatenation(input)
    }
}
