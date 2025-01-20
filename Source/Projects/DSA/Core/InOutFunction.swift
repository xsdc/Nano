
public protocol InOutFunction: FunctionExecuting where Output == Input {
    static func execute(_ input: inout Input)
}

extension InOutFunction {
    public static func execute(_ input: Input) -> Output {
        var mutableInput = input
        execute(&mutableInput)
        return mutableInput
    }
}
