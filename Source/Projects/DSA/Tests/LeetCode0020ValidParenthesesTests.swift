import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0020ValidParentheses() {
    Problem<String, Bool>(
        solutions: [
            Problem.Solution(PreemptiveClosingStack_LeetCode0020ValidParentheses.self),
            Problem.Solution(OpeningStack_LeetCode0020ValidParentheses.self),
            Problem.Solution(BruteForce_LeetCode0020ValidParentheses.self),
        ],
        testCases: [
            Problem.TestCase(
                input: ")(",
                output: false
            ),
            Problem.TestCase(
                input: "()",
                output: true
            ),
            Problem.TestCase(
                input: "()[]{}",
                output: true
            ),
            Problem.TestCase(
                input: "(]",
                output: false
            ),
            Problem.TestCase(
                input: "([])",
                output: true
            ),
            Problem.TestCase(
                input: "([])}",
                output: false
            ),
            Problem.TestCase(
                input: "([]",
                output: false
            ),
            Problem.TestCase(
                input: "((((((((]]]]]]]]]",
                output: false
            ),
            Problem.TestCase(
                input: "()()()()()()()()()()",
                output: true
            ),
            Problem.TestCase(
                input: "()()>()()()()()()()",
                output: false
            ),
            Problem.TestCase(
                input: "([{{[](){}}}])",
                output: true
            ),
            Problem.TestCase(
                input: ")[{{[](){}}}](",
                output: false
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

