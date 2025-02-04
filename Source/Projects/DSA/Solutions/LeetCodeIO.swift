import Foundation
import DSACore

// 0020. Valid Parentheses

protocol LeetCode0020ValidParentheses: FunctionExecuting where Input == String, Output == Bool {}

// 0026. Remove Duplicates from Sorted Array

struct LeetCode0026Input: Equatable {
    let nums: [Int]
}

struct LeetCode0026Output: Equatable {
    let nums: [Int]
    let length: Int
}

protocol LeetCode0026RemoveDuplicatesFromSortedArray: FunctionExecuting where Input == LeetCode0026Input, Output == LeetCode0026Output {}

// 0027. Remove Element

struct LeetCode0027Input {
    let nums: [Int]
    let val: Int
}

struct LeetCode0027Output: Equatable {
    let nums: [Int]
    let notValCount: Int
}

protocol LeetCode0027RemoveElement: FunctionExecuting where Input == LeetCode0027Input, Output == LeetCode0027Output {}

// 0155. Min Stack

struct LeetCode0155Input {
    enum MinStackOperation {
        case push(Int)
        case pop
    }

    let operations: [MinStackOperation]
}

struct LeetCode0155Output: Equatable  {
    let stack: [Int]
    let top: Int?
    let min: Int?
}

protocol LeetCode0155MinStack: FunctionExecuting where Input == LeetCode0155Input, Output == LeetCode0155Output {}

// 1929. Concatenation of Array

protocol LeetCode1929ConcatenationOfArray: FunctionExecuting where Input == [Int], Output == [Int] {}
