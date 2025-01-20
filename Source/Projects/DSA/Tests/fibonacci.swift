public let commonFibonacciTestCases: [TestCase<FibonacciProblem>] = [
    TestCase(
        input: 0,
        output: 0
    ),
    TestCase(
        input: 1,
        output: 1
    ),
    TestCase(
        input: 5,
        output: 5
    ),
    TestCase(
        input: 10,
        output: 55
    ),
]

public let allFibonacciSolutions: [AnySolution] = [
    AnySolutionWrapper(FibonacciRecursive.self, testCases: commonFibonacciTestCases),
    AnySolutionWrapper(FibonacciDynamic.self, testCases: commonFibonacciTestCases),
]
