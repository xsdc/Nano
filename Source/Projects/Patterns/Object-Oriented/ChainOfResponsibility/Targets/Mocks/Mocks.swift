import Foundation
import ChainOfResponsibilityAbstractions

public struct Mocks {
    public static func request() -> Request {
        return Request(productId: "1234")
    }
}
