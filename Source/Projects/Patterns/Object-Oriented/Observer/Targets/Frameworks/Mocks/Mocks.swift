import Foundation
import ObserverAbstractions

public struct Mocks {
    public static let product1ID = UUID(uuidString: "11111111-1111-1111-1111-111111111111")!
    public static let product2ID = UUID(uuidString: "22222222-2222-2222-2222-222222222222")!
    public static let product3ID = UUID(uuidString: "33333333-3333-3333-3333-333333333333")!
    
    public static var product1: Product {
        Product(id: product1ID, name: "iPad Pro", price: 999.99)
    }
    
    public static var product2: Product {
        Product(id: product2ID, name: "Apple Pencil", price: 99.99)
    }
    
    public static var product3: Product {
        Product(id: product3ID, name: "Smart Keyboard", price: 169.99)
    }
    
    public static var oneProduct: [Product] {
        [product1]
    }
    
    public static var twoProducts: [Product] {
        [product1, product2]
    }
    
    public static var threeProducts: [Product] {
        [product1, product2, product3]
    }
}
