import Foundation
import ProxyAbstractions
import ProxyConcretions

public struct Mocks {
    public static func product() -> Product {
        Product(name: "iPhone", price: 999.99)
    }
}
