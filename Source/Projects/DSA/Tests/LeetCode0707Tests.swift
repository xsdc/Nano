import Testing
import DSACore

@testable import DSASolutions

@Test func testLeetCode0707() {
    typealias LeetCode = LeetCode0707
    
    Problem<LeetCode.Input, LeetCode.Output>(
        solutions: [
            Problem.Solution(LeetCode.Functions.Pointer.self)
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
