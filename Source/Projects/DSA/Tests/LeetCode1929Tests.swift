import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode1929ConcatenationOfArray() {
    Problem<LeetCode1929.Input, LeetCode1929.Output>(
        solutions: [
            Problem.Solution(Operator_LeetCode1929Solution.self),
            Problem.Solution(Nested_LeetCode1929Solution.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode1929.Input(
                    nums: []
                ),
                output: LeetCode1929.Output(
                    concatenation: []
                )
            ),
            Problem.TestCase(
                input: LeetCode1929.Input(
                    nums: [1]
                ),
                output: LeetCode1929.Output(
                    concatenation: [1, 1]
                )
            ),
            Problem.TestCase(
                input: LeetCode1929.Input(
                    nums: [0]
                ),
                output: LeetCode1929.Output(
                    concatenation: [0, 0]
                )
            ),
            Problem.TestCase(
                input: LeetCode1929.Input(
                    nums: [1, 2, 3]
                ),
                output: LeetCode1929.Output(
                    concatenation: [1, 2, 3, 1, 2, 3]
                )
            ),
            Problem.TestCase(
                input: LeetCode1929.Input(
                    nums: [3, 2, 1]
                ),
                output: LeetCode1929.Output(
                    concatenation: [3, 2, 1, 3, 2, 1]
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
