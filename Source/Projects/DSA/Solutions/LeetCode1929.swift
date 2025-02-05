import DSACore

struct LeetCode1929 {
    struct Input {
        let nums: [Int]
    }

    struct Output: Equatable {
        let concatenation: [Int]
    }
}

protocol LeetCode1929Solution: FunctionExecuting where Input == LeetCode1929.Input, Output == LeetCode1929.Output {}

// Time complexity:
// Space complexity:

struct Operator_LeetCode1929Solution: LeetCode1929Solution {
    static func execute(_ input: LeetCode1929.Input) -> LeetCode1929.Output {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            return nums + nums
        }

        return LeetCode1929.Output(
            concatenation: getConcatenation(input.nums)
        )
    }
}

// Time complexity:
// Space complexity:

struct Nested_LeetCode1929Solution: LeetCode1929Solution {
    static func execute(_ input: LeetCode1929.Input) -> LeetCode1929.Output {
        func getConcatenation(_ nums: [Int]) -> [Int] {
            var array = [Int]()

            for _ in 0...1 {
                for num in nums {
                    array.append(num)
                }
            }

            return array
        }

        return LeetCode1929.Output(
            concatenation: getConcatenation(input.nums)
        )
    }
}
