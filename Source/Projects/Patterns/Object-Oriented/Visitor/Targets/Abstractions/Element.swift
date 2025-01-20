import Foundation

public protocol Product {
    var id: String { get }
    var price: Double { get }
}

public protocol VisitorAccepting {
    func accept<V: Visitor>(_ visitor: V) -> V.VisitorResult
}
