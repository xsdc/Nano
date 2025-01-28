import DSACore

struct LeetCode0027Input {
    let nums: [Int]
    let val: Int
}

struct LeetCode0027Output: Equatable {
    let nums: [Int]
    let notValCount: Int
}

protocol LeetCode0020RemoveElement: FunctionExecuting where Input == LeetCode0027Input, Output == LeetCode0027Output {}

// Time complexity:
// Space complexity:

struct PointersA_LeetCode0020RemoveElement: LeetCode0020RemoveElement {
    static func execute(_ input: LeetCode0027Input) -> LeetCode0027Output {
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
        
        return LeetCode0027Output(
            nums: mutableInput,
            notValCount: notValCount
        )
    }
}

// Time complexity:
// Space complexity:

struct PointersB_LeetCode0020RemoveElement: LeetCode0020RemoveElement {
    static func execute(_ input: LeetCode0027Input) -> LeetCode0027Output {
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
        
        return LeetCode0027Output(
            nums: mutableInput,
            notValCount: notValCount
        )
    }
}
