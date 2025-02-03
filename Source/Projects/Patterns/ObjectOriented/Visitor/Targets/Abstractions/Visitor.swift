import Foundation

public protocol Visitor {
    associatedtype VisitorResult
    func visit(_ product: Product) -> VisitorResult
}
