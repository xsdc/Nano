import Foundation

open class PriceDecorator: PriceProviding {
    private let product: PriceProviding

    public init(product: PriceProviding) {
        self.product = product
    }

    open var price: Double {
        return product.price
    }
}
