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
    static func execute(input: LeetCode0026.Input) -> LeetCode0026.Output {
        func removeDuplicates(_ nums: inout [Int]) -> Int {
            if nums.isEmpty { return 0 }

            var p = 1

            for q in 1..<nums.count {
                if nums[p - 1] != nums[q] {
                    nums[p] = nums[q]
                    p += 1
                }
            }

            for i in p..<nums.count {
                nums[i] = 0
            }

            return p
        }

        var mutableInput = input.nums
        let length = removeDuplicates(&mutableInput)
        return LeetCode0026.Output(
            nums: mutableInput,
            length: length
        )
    }
}
