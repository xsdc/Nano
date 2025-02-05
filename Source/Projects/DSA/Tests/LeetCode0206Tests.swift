import Testing
import DSACore

@testable import DSASolutions

@Test func testLeetCode0206() async {
    Problem<LeetCode0206.Input, LeetCode0206.Output>(
        solutions: [
            Problem.Solution(Pointer_LeetCode0206Solution.self),
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0206.Input(
                    head: LeetCode0206.ListNode(
                        1, nil
                    )
                ),
                output: LeetCode0206.Output(
                    head: LeetCode0206.ListNode(
                        1, nil
                    )
                )
            ),
            Problem.TestCase(
                input: LeetCode0206.Input(
                    head:
                        LeetCode0206.ListNode(
                            1, LeetCode0206.ListNode(
                                2, nil
                            )
                        )
                ),
                output: LeetCode0206.Output(
                    head:
                        LeetCode0206.ListNode(
                            2, LeetCode0206.ListNode(
                                1, nil
                            )
                        )
                )
            ),
            Problem.TestCase(
                input: LeetCode0206.Input(
                    head:
                        LeetCode0206.ListNode(
                            1, LeetCode0206.ListNode(
                                2, LeetCode0206.ListNode(
                                    3, LeetCode0206.ListNode(
                                        4, LeetCode0206.ListNode(
                                            5, nil
                                        )
                                    )
                                )
                            )
                        )
                ),
                output: LeetCode0206.Output(
                    head:
                        LeetCode0206.ListNode(
                            5, LeetCode0206.ListNode(
                                4, LeetCode0206.ListNode(
                                    3, LeetCode0206.ListNode(
                                        2, LeetCode0206.ListNode(
                                            1, nil
                                        )
                                    )
                                )
                            )
                        )
                )
            ),
        ]
    ).results.forEach { result in
        #expect(result == true)
    }
}
