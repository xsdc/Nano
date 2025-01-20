import Testing

@testable import Solutions

struct Tests {
    @Test func testReverseString() {
        let commonReverseStringTestCases: [TestCase<ReverseStringProblem>] = [
            TestCase(
                input: ["h", "e", "l", "l", "o"],
                output: ["o", "l", "l", "e", "h"]
            ),
            TestCase(
                input: ["H", "a", "n", "n", "a", "h"],
                output: ["h", "a", "n", "n", "a", "H"]
            ),
            TestCase(
                input: [],
                output: []
            ),
            TestCase(
                input: ["a"],
                output: ["a"]
            ),
        ]
    }
}

struct TestRunner {
    private let problemSolutions: [AnySolution]

    public init(problemSolutions: [AnySolution]) {
        self.problemSolutions = problemSolutions
    }

    public func runTests() {
        for solution in problemSolutions {
            let testCases = solution.getTestCases()
            print("Running tests for solution: \(solution.name)")
            for testCase in testCases {
                testCase.runTest()
            }
            print("\n")
        }
    }
}
