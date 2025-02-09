import Testing
import DSACore

@testable import DSASolutions

typealias LeetCode = LeetCode0707

@Test func test() {
    Problem<LeetCode.Input, LeetCode.Output>(
        solutions: [
            Problem.Solution(LeetCode.Solution.Pointer.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode.Input(
                    operations: []
                ),
                output: LeetCode.Output(
                    linkedList: [[Int]]()
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
