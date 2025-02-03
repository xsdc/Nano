public protocol ComponentView {
    var name: String { get }
}

public struct Product {
    public let name: String
    public let price: Double
    
    public init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}
