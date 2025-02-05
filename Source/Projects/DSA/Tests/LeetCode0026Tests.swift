import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0026RemoveDuplicatesFromSortedArray() {
    Problem<LeetCode0026.Input, LeetCode0026.Output>(
        solutions: [
            Problem.Solution(Pointers_LeetCode0026Solution.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: []
                ),
                output: LeetCode0026.Output(
                    nums: [],
                    length: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [-100, -1, 0, 1, 100]
                ),
                output: LeetCode0026.Output(
                    nums: [-100, -1, 0, 1, 100],
                    length: 5
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [-100, -100, -100, -100, -100]
                ),
                output: LeetCode0026.Output(
                    nums: [-100, 0, 0, 0, 0],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [-100, -100, -1, -1, 0, 0, 1, 1, 100, 100]
                ),
                output: LeetCode0026.Output(
                    nums: [-100, -1, 0, 1, 100, 0, 0, 0, 0, 0],
                    length: 5
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [0]
                ),
                output: LeetCode0026.Output(
                    nums: [0],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [1]
                ),
                output: LeetCode0026.Output(
                    nums: [1],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [0, 0, 1, 1]
                ),
                output: LeetCode0026.Output(
                    nums: [0, 1, 0, 0],
                    length: 2
                )
            ),
            Problem.TestCase(
                input: LeetCode0026.Input(
                    nums: [0, 1, 1, 2, 2, 3, 3, 4]
                ),
                output: LeetCode0026.Output(
                    nums: [0, 1, 2, 3, 4, 0, 0, 0],
                    length: 5
                )
            )
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

