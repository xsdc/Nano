import DSACore

struct LeetCode0026 {
    struct Input {
        let nums: [Int]
    }

    struct Output: Equatable {
        let nums: [Int]
        let length: Int
    }
}

protocol LeetCode0026Solution: FunctionExecuting where Input == LeetCode0026.Input, Output == LeetCode0026.Output {}

// Time complexity:
// Space complexity:

struct Pointers_LeetCode0026Solution: LeetCode0026Solution {
    static func execute(_ input: LeetCode0026.Input) -> LeetCode0026.Output {
        func removeDuplicates(_ nums: inout [Int]) -> Int {
            if nums.isEmpty { return 0 }

            var left = 1

            for right in 1..<nums.count {
                if nums[left - 1] != nums[right] {
                    nums[left] = nums[right]
                    left += 1
                }
            }

            for i in left..<nums.count {
                nums[i] = 0
            }

            return left
        }

        var mutableInput = input.nums
        let length = removeDuplicates(&mutableInput)
        return LeetCode0026.Output(
            nums: mutableInput,
            length: length
        )
    }
}
