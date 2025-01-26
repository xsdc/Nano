
public struct Problem<Input, Output: Equatable> {
    public struct Solution {
        let execute: (Input) -> Output
        
        public init<F: FunctionExecuting>(_ fn: F.Type) where F.Input == Input, F.Output == Output {
            self.execute = fn.execute
        }
    }
    
    public struct TestCase {
        let input: Input
        let output: Output
        
        public init(input: Input, output: Output) {
            self.input = input
            self.output = output
        }
    }
    
    let solutions: [Solution]
    let testCases: [TestCase]
    
    public init(solutions: [Solution], testCases: [TestCase]) {
        self.solutions = solutions
        self.testCases = testCases
    }
    
    public var results: [Bool] {
        return solutions.flatMap { solution in
            testCases.map { testCase in
                solution.execute(testCase.input) == testCase.output
            }
        }
    }
}
