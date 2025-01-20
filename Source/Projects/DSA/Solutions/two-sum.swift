public protocol TwoSumProblem: FunctionExecuting
where Input == (nums: [Int], target: Int), Output == [Int] {}

public struct TwoSumBruteForce: TwoSumProblem {
    public static func execute(_ input: inout (nums: [Int], target: Int)) -> [Int] {
        let nums = input.nums
        let target = input.target
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

public struct TwoSumHashMap: TwoSumProblem {
    public static func execute(_ input: inout (nums: [Int], target: Int)) -> [Int] {
        let nums = input.nums
        let target = input.target
        var numToIndex = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let complementIndex = numToIndex[target - num] {
                return [complementIndex, index]
            }
            numToIndex[num] = index
        }
        return []
    }
}
