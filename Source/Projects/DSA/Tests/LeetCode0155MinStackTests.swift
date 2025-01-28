import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0155MinStack() {
    Problem<[Int], [Int]>(
        solutions: [
            Problem.Solution(_LeetCode0155MinStack.self),
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

