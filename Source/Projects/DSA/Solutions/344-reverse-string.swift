import Core

public protocol ReverseStringProblem: InOutFunction where Input == [Character] {}

public let allReverseStringSolutions: [AnySolution] = [
    AnySolutionWrapper(ReverseStringWithBuiltInArray.self, testCases: commonReverseStringTestCases),
    AnySolutionWrapper(ReverseStringWithTwoPointers.self, testCases: commonReverseStringTestCases),
]

public struct ReverseStringWithBuiltInArray: ReverseStringProblem {
    public static func execute(_ input: inout [Character]) {
        input.reverse()
    }
}

public struct ReverseStringWithTwoPointers: ReverseStringProblem {
    public static func execute(_ input: inout [Character]) {
        var left = 0
        var right = input.count - 1
        while left < right {
            input.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}
