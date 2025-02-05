
public protocol FunctionExecuting where Output: Equatable {
    associatedtype Input
    associatedtype Output

    static func execute(_ input: Input) -> Output
}
