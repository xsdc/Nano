import DSACore

struct LeetCode0020Output: Equatable {
    let nums: [Int]
    let length: Int
}

protocol LeetCode0020RemoveDuplicatesFromSortedArray: FunctionExecuting where Input == [Int], Output == LeetCode0020Output {}

// Time complexity:
// Space complexity:

struct Pointers_LeetCode0020RemoveDuplicatesFromSortedArray: LeetCode0020RemoveDuplicatesFromSortedArray {
    static func execute(_ input: [Int]) -> LeetCode0020Output {
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
        
        var mutableInput = input
        let length = removeDuplicates(&mutableInput)
        return LeetCode0020Output(nums: mutableInput, length: length)
    }
}
