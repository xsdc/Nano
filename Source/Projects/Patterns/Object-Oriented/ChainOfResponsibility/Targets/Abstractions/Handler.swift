public protocol Handler {
    var next: Handler? { get }

    func handle(request: Request, completion: @escaping (String) -> Void)
}
