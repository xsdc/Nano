import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0155MinStack() {
    Problem<LeetCode0155Input, LeetCode0155Output>(
        solutions: [
            Problem.Solution(Array_LeetCode0155MinStack.self),
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(5),
                    .push(-5)
                ]),
                output: LeetCode0155Output(
                    stack: [5, -5],
                    top: -5,
                    min: -5
                )
            ),
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(-5),
                    .push(5)
                ]),
                output: LeetCode0155Output(
                    stack: [-5, 5],
                    top: 5,
                    min: -5
                )
            ),
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(5),
                    .push(-5),
                    .pop,
                    .push(4),
                    .push(-4)
                ]),
                output: LeetCode0155Output(
                    stack: [5, 4, -4],
                    top: -4,
                    min: -4
                )
            ),
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(5),
                    .push(-5),
                    .push(4),
                    .push(-4)
                ]),
                output: LeetCode0155Output(
                    stack: [5, -5, 4, -4],
                    top: -4,
                    min: -5
                )
            ),
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(5),
                    .push(-5),
                    .pop,
                    .pop
                ]),
                output: LeetCode0155Output(
                    stack: [],
                    top: 0,
                    min: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0155Input(operations: [
                    .push(-4),
                    .push(-1),
                    .push(-2),
                    .push(-3),
                    .pop,
                    .push(-3),
                ]),
                output: LeetCode0155Output(
                    stack: [-4, -1, -2, -3],
                    top: -3,
                    min: -4
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

