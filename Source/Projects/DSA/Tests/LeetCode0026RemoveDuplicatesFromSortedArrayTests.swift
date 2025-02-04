import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0020RemoveDuplicatesFromSortedArray() {
    Problem<[Int], LeetCode0020Output>(
        solutions: [
            Problem.Solution(Pointers_LeetCode0020RemoveDuplicatesFromSortedArray.self)
        ],
        testCases: [
            Problem.TestCase(
                input: [],
                output: LeetCode0020Output(
                    nums: [],
                    length: 0
                )
            ),
            Problem.TestCase(
                input: [-100, -1, 0, 1, 100],
                output: LeetCode0020Output(
                    nums: [-100, -1, 0, 1, 100],
                    length: 5
                )
            ),
            Problem.TestCase(
                input: [-100, -100, -100, -100, -100],
                output: LeetCode0020Output(
                    nums: [-100, 0, 0, 0, 0],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: [-100, -100, -1, -1, 0, 0, 1, 1, 100, 100],
                output: LeetCode0020Output(
                    nums: [-100, -1, 0, 1, 100, 0, 0, 0, 0, 0],
                    length: 5
                )
            ),
            Problem.TestCase(
                input: [0],
                output: LeetCode0020Output(
                    nums: [0],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: [1],
                output: LeetCode0020Output(
                    nums: [1],
                    length: 1
                )
            ),
            Problem.TestCase(
                input: [0, 0, 1, 1],
                output: LeetCode0020Output(
                    nums: [0, 1, 0, 0],
                    length: 2
                )
            ),
            Problem.TestCase(
                input: [0, 1, 1, 2, 2, 3, 3, 4],
                output: LeetCode0020Output(
                    nums: [0, 1, 2, 3, 4, 0, 0, 0],
                    length: 5
                )
            )
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

