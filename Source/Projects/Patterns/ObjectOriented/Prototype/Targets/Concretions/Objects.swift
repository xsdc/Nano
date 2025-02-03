import Foundation

public struct ConfigurationOption {
    let name: String
    let price: Double
    
    public init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}
