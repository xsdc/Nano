import VisitorAbstractions

public struct MacBookProProduct: Product, VisitorAccepting {
    public let id: String
    public let price: Double
    
    public init(id: String, price: Double) {
        self.id = id
        self.price = price
    }

    public func accept<V: Visitor>(_ visitor: V) -> V.VisitorResult {
        visitor.visit(self)
    }
}

public struct VisionProProduct: Product, VisitorAccepting {
    public let id: String
    public let price: Double

    public init(id: String, price: Double) {
        self.id = id
        self.price = price
    }
    
    public func accept<V: Visitor>(_ visitor: V) -> V.VisitorResult {
        visitor.visit(self)
    }
}
