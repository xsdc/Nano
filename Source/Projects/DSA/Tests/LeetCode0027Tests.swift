import Testing
import DSACore

@testable import DSASolutions

@Test func testLeetCode0027RemoveElement_PointerA() {
    Problem<LeetCode0027.Input, LeetCode0027.Output>(
        solutions: [
            Problem.Solution(PointerA_LeetCode0027Solution.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [],
                    val: 8
                ),
                output: LeetCode0027.Output(
                    nums: [],
                    notValCount: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0],
                    val: 8
                ),
                output: LeetCode0027.Output(
                    nums: [0],
                    notValCount: 1
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0],
                    val: 0
                ),
                output: LeetCode0027.Output(
                    nums: [0],
                    notValCount: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [1, 2, 3, 4],
                    val: 5
                ),
                output: LeetCode0027.Output(
                    nums: [1, 2, 3, 4],
                    notValCount: 4
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [1, 2, 3, 4],
                    val: 3
                ),
                output: LeetCode0027.Output(
                    nums: [1, 2, 4, 4],
                    notValCount: 3
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [1, 2, 3, 4],
                    val: 4
                ),
                output: LeetCode0027.Output(
                    nums: [1, 2, 3, 4],
                    notValCount: 3
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [1, 2, 3, 4],
                    val: 1
                ),
                output: LeetCode0027.Output(
                    nums: [4, 2, 3, 4],
                    notValCount: 3
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [3, 2, 2, 3],
                    val: 3
                ),
                output: LeetCode0027.Output(
                    nums: [2, 2, 2, 3],
                    notValCount: 2
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [3, 2, 2, 3],
                    val: 2
                ),
                output: LeetCode0027.Output(
                    nums: [3, 3, 2, 3],
                    notValCount: 2
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}

@Test func testLeetCode0027RemoveElement_PointerB() {
    Problem<LeetCode0027.Input, LeetCode0027.Output>(
        solutions: [
            Problem.Solution(PointerB_LeetCode0027Solution.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [],
                    val: 8
                ),
                output: LeetCode0027.Output(
                    nums: [],
                    notValCount: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0],
                    val: 8
                ),
                output: LeetCode0027.Output(
                    nums: [0],
                    notValCount: 1
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0],
                    val: 0
                ),
                output: LeetCode0027.Output(
                    nums: [0],
                    notValCount: 0
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [3, 2, 2, 3],
                    val: 3
                ),
                output: LeetCode0027.Output(
                    nums: [2, 2, 2, 3],
                    notValCount: 2
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [3, 2, 2, 3],
                    val: 2
                ),
                output: LeetCode0027.Output(
                    nums: [3, 3, 2, 3],
                    notValCount: 2
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0, 1, 2, 2, 3, 0, 4, 2],
                    val: 2
                ),
                output: LeetCode0027.Output(
                    nums: [0, 1, 3, 0, 4, 0, 4, 2],
                    notValCount: 5
                )
            ),
            Problem.TestCase(
                input: LeetCode0027.Input(
                    nums: [0, 1, 2, 2, 3, 0, 4, 2],
                    val: 0
                ),
                output: LeetCode0027.Output(
                    nums: [1, 2, 2, 3, 4, 2, 4, 2],
                    notValCount: 6
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
