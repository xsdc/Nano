import Testing
import DSACore

@testable import DSASolutions

@Test func testLeetCode0020ValidParentheses() {
    Problem<LeetCode0020.Input, LeetCode0020.Output>(
        solutions: [
            Problem.Solution(PreemptiveClosingStack_LeetCode0020Solution.self),
            Problem.Solution(OpeningStack_LeetCode0020Solution.self),
            Problem.Solution(BruteForce_LeetCode0020Solution.self),
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: ")("
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "()"
                ),
                output: LeetCode0020.Output(
                    isValid: true
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "()[]{}"
                ),
                output: LeetCode0020.Output(
                    isValid: true
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "(]"
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "([])"
                ),
                output: LeetCode0020.Output(
                    isValid: true
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "([])}"
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "([]"
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "((((((((]]]]]]]]]"
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "()()()()()()()()()()"
                ),
                output: LeetCode0020.Output(
                    isValid: true
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "()()>()()()()()()()"
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: "([{{[](){}}}])"
                ),
                output: LeetCode0020.Output(
                    isValid: true
                )
            ),
            Problem.TestCase(
                input: LeetCode0020.Input(
                    s: ")[{{[](){}}}]("
                ),
                output: LeetCode0020.Output(
                    isValid: false
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

