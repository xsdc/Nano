
// Time complexity:
// Space complexity:

struct Pointers_LeetCode0026RemoveDuplicatesFromSortedArray: LeetCode0026RemoveDuplicatesFromSortedArray {
    static func execute(_ input: LeetCode0026Input) -> LeetCode0026Output {
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
        return LeetCode0026Output(nums: mutableInput, length: length)
    }
}
