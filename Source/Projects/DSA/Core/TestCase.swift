public struct TestCase<F: FunctionExecuting> {
    let input: F.Input
    let output: F.Output
}

public protocol AnyTestCase {
    var name: String { get }
    func runTest()
}

public struct AnyTestCaseWrapper<F: FunctionExecuting>: AnyTestCase {
    public let name: String
    private let testCase: TestCase<F>

    public init(testCase: TestCase<F>, solutionType: F.Type) {
        self.testCase = testCase
        self.name = String(describing: solutionType)
    }

    public func runTest() {
        let output = F.execute(testCase.input)
        let isSuccess = output == testCase.output
        if isSuccess {
            print("✅ [\(name)] Passed for input: \(testCase.input)")
        } else {
            print("❌ [\(name)] Failed for input: \(testCase.input)")
            print("   Expected Output: \(testCase.output)")
            print("   Actual Output: \(output)")
        }
    }
}
