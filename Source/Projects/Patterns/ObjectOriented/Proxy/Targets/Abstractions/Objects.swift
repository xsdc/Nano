
public struct Product {
    let name: String
    let price: Double
    
    public init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

public protocol AnalyticsEventLogging {
    func log(event: String)
}
