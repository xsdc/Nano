
public protocol FunctionExecuting {
    associatedtype Input
    associatedtype Output

    static func execute(_ input: Input) -> Output
}
