import DSACore
import DSASolutions

import Testing
@Test public func testFibonacci() {
    let problem = Problem<Int, Int>(
        solutions: [
            Problem.Solution(RecursiveA_LeetCode509FibonacciNumberSolution.self),
            Problem.Solution(RecursiveN_LeetCode509FibonacciNumberSolution.self)
        ],
        testCases: [
            Problem.TestCase(input: 0, output: 0),
            Problem.TestCase(input: 3, output: 2),
            Problem.TestCase(input: 4, output: 3),
            Problem.TestCase(input: 5, output: 5),
            Problem.TestCase(input: 6, output: 8),
            Problem.TestCase(input: 10, output: 55)
        ]
    )
    problem.results.forEach { result in
        #expect(result == true)
    }
}
