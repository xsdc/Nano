public class Request {
    public let productId: String
    public var log: [String] = []
    
    public init(productId: String) {
        self.productId = productId
    }
}
