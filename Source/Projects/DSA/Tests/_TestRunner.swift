import Core
import Solutions

public let allSolutions: [AnySolution] = [
    AnySolutionWrapper(ReverseStringWithBuiltInArray.self, testCases: commonReverseStringTestCases),
    AnySolutionWrapper(ReverseStringWithTwoPointers.self, testCases: commonReverseStringTestCases),
    AnySolutionWrapper(TwoSumBruteForce.self, testCases: commonTwoSumTestCases),
    AnySolutionWrapper(TwoSumHashMap.self, testCases: commonTwoSumTestCases),
    AnySolutionWrapper(FibonacciRecursive.self, testCases: commonFibonacciTestCases),
    AnySolutionWrapper(FibonacciDynamic.self, testCases: commonFibonacciTestCases),
]

let testRunner = TestRunner(problemSolutions: allSolutions)
testRunner.runTests()
