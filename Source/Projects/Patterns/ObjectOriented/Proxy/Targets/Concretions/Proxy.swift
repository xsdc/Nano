import ProxyAbstractions

struct BagWithAnalyticsProxy: ProductManaging {
    let bag: ProductManaging
    let logger: AnalyticsEventLogging

    func addProduct(_ product: Product) {
        bag.addProduct(product)

        logger.log(event: "productAddedToBag")
    }

    func removeProduct(_ product: Product) {
        bag.removeProduct(product)

        logger.log(event: "productRemovedFromBag")
    }

    func clearAllProducts() {
        bag.clearAllProducts()

        logger.log(event: "allProductsRemovedFromBag")
    }
}
