
public protocol ViewModel: AnyObject {
    var showNoInternetConnectionAlert: Bool { get set }
    var requests: [Request] { get set }

    func updateConnection(toReachable isReachable: Bool)
}

public struct Request {
    public let id: Int
    public var isSuspended: Bool
    
    public init(id: Int, isSuspended: Bool) {
        self.id = id
        self.isSuspended = isSuspended
    }
}
