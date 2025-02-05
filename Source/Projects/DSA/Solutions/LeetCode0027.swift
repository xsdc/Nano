import DSACore

struct LeetCode0027 {
    struct Input {
        let nums: [Int]
        let val: Int
    }

    struct Output: Equatable {
        let nums: [Int]
        let notValCount: Int
    }
}

protocol LeetCode0027Solution: FunctionExecuting where Input == LeetCode0027.Input, Output == LeetCode0027.Output {}

// Time complexity:
// Space complexity:

struct PointersA_LeetCode0027Solution: LeetCode0027Solution {
    static func execute(_ input: LeetCode0027.Input) -> LeetCode0027.Output {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            var p = 0
            var q = nums.count

            while p < q {
                if nums[p] == val {
                    q -= 1
                    nums[p] = nums[q]
                }
                else {
                    p += 1
                }
            }

            return p
        }

        var mutableInput = input.nums
        let notValCount = removeElement(&mutableInput, input.val)

        return LeetCode0027.Output(
            nums: mutableInput,
            notValCount: notValCount
        )
    }
}

// Time complexity:
// Space complexity:

struct PointersB_LeetCode0027Solution: LeetCode0027Solution {
    static func execute(_ input: LeetCode0027.Input) -> LeetCode0027.Output {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            var p = 0

            for q in 0..<nums.count {
                if nums[q] != val {
                    nums[p] = nums[q]
                    p += 1
                }
            }

            return p
        }

        var mutableInput = input.nums
        let notValCount = removeElement(&mutableInput, input.val)

        return LeetCode0027.Output(
            nums: mutableInput,
            notValCount: notValCount
        )
    }
}
