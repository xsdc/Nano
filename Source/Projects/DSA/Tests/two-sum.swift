public let commonTwoSumTestCases: [TestCase<TwoSumProblem>] = [
    TestCase(
        input: (nums: [2, 7, 11, 15], target: 9),
        output: [0, 1]
    ),
    TestCase(
        input: (nums: [3, 2, 4], target: 6),
        output: [1, 2]
    ),
    TestCase(
        input: (nums: [3, 3], target: 6),
        output: [0, 1]
    ),
]

public let allTwoSumSolutions: [AnySolution] = [
    AnySolutionWrapper(TwoSumBruteForce.self, testCases: commonTwoSumTestCases),
    AnySolutionWrapper(TwoSumHashMap.self, testCases: commonTwoSumTestCases),
]
