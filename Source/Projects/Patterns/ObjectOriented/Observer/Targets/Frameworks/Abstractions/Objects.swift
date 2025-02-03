import Foundation

public struct Product: Equatable, Identifiable, Codable {
    public let id: UUID
    public let name: String
    public let price: Double

    public init(id: UUID, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}
