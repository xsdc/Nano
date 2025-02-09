import Testing

import DSACore

@testable import DSASolutions

@Test func testLeetCode0021() {
    Problem<LeetCode0021.Input, LeetCode0021.Output>(
        solutions: [
            Problem.Solution(Pointer_LeetCode0021Solution.self)
        ],
        testCases: [
            Problem.TestCase(
                input: LeetCode0021.Input(
                    list1:
                        LeetCode0021.ListNode(
                            0,
                            LeetCode0021.ListNode(
                                1, nil
                            )
                        ),
                    list2:
                        LeetCode0021.ListNode(
                            1,
                            LeetCode0021.ListNode(
                                2, nil
                            )
                        )
                ),
                output: LeetCode0021.Output(
                    mergedList:
                        LeetCode0021.ListNode(
                            0,
                            LeetCode0021.ListNode(
                                1,
                                LeetCode0021.ListNode(
                                    1,
                                    LeetCode0021.ListNode(
                                        2, nil
                                    )
                                )
                            )
                        )
                )
            ),
            Problem.TestCase(
                input: LeetCode0021.Input(
                    list1:
                        LeetCode0021.ListNode(
                            0,
                            LeetCode0021.ListNode(
                                1,
                                LeetCode0021.ListNode(
                                    1,
                                    LeetCode0021.ListNode(
                                        2, nil
                                    )
                                )
                            )
                        ),
                    list2:
                        LeetCode0021.ListNode(
                            1,
                            LeetCode0021.ListNode(
                                2, nil
                            )
                        )
                ),
                output: LeetCode0021.Output(
                    mergedList:
                        LeetCode0021.ListNode(
                            0,
                            LeetCode0021.ListNode(
                                1,
                                LeetCode0021.ListNode(
                                    1,
                                    LeetCode0021.ListNode(
                                        1,
                                        LeetCode0021.ListNode(
                                            2,
                                            LeetCode0021.ListNode(
                                                2, nil
                                            )
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

