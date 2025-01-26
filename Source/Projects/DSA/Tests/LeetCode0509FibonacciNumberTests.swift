import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0509FibonacciNumber() {
    Problem<Int, Int>(
        solutions: [
            Problem.Solution(RecursiveA_LeetCode0509FibonacciNumber.self),
            Problem.Solution(RecursiveN_LeetCode0509FibonacciNumber.self)
        ],
        testCases: [
            Problem.TestCase(input: 0, output: 0),
            Problem.TestCase(input: 3, output: 2),
            Problem.TestCase(input: 4, output: 3),
            Problem.TestCase(input: 5, output: 5),
            Problem.TestCase(input: 6, output: 8),
            Problem.TestCase(input: 10, output: 55)
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
