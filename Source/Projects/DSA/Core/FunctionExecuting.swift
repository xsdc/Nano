
public protocol FunctionExecuting {
    associatedtype Input
    associatedtype Output: Equatable

    static func execute(input: Input) -> Output
}
