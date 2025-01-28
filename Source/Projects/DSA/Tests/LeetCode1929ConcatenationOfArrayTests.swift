import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode1929ConcatenationOfArray() {
    Problem<[Int], [Int]>(
        solutions: [
            Problem.Solution(Operator_LeetCode1929ConcatenationOfArray.self),
            Problem.Solution(Nested_LeetCode1929ConcatenationOfArray.self)
        ],
        testCases: [
            Problem.TestCase(
                input: [],
                output: []
            ),
            Problem.TestCase(
                input: [0],
                output: [0, 0]
            ),
            Problem.TestCase(
                input: [3, 2, 1],
                output: [3, 2, 1, 3, 2, 1]
            )
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
