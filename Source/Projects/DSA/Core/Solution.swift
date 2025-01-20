public protocol AnySolution {
    var name: String { get }
    func getTestCases() -> [AnyTestCase]
}

public struct AnySolutionWrapper<F: FunctionExecuting>: AnySolution {
    public let name: String
    private let solutionType: F.Type
    private let testCases: [TestCase<F>]

    public init(_ solutionType: F.Type, testCases: [TestCase<F>]) {
        self.solutionType = solutionType
        self.name = String(describing: solutionType)
        self.testCases = testCases
    }

    public func getTestCases() -> [AnyTestCase] {
        return testCases.map { AnyTestCaseWrapper(testCase: $0, solutionType: solutionType) }
    }
}
