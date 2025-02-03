import ChainOfResponsibilityAbstractions

public class StockCheckHandler: Handler {
    private(set) public var next: Handler?

    public init(next: Handler?) {
        self.next = next
    }

    public func handle(request: Request, completion: @escaping (String) -> Void) {
        let isInStock = true

        if isInStock {
            request.log.append("Product \(request.productId) is in stock")
            next?.handle(request: request, completion: completion)
        } else {
            completion("Product \(request.productId) is out of stock")
        }
    }
}

public class AddToBagHandler: Handler {
    private(set) public var next: Handler?

    public init(next: Handler?) {
        self.next = next
    }

    public func handle(request: Request, completion: @escaping (String) -> Void) {
        let addToBagSucceeded = true

        if addToBagSucceeded {
            request.log.append("Product \(request.productId) added to bag")
            next?.handle(request: request, completion: completion)
        } else {
            request.log.append("Failed to add product \(request.productId) to bag")
            completion("Failed to add product \(request.productId) to bag")
        }
    }
}

public class LoggingHandler: Handler {
    private(set) public var next: Handler?

    public init(next: Handler?) {
        self.next = next
    }

    public func handle(request: Request, completion: @escaping (String) -> Void) {
        request.log.append("Logging analytics event for product \(request.productId)")
        completion("Request completed")
    }
}
