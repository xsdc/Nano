import MementoAbstractions

class Bag {
    private(set) var products: [Product]

    init(products: [Product] = []) {
        self.products = products
    }

    func save() -> BagState {
        BagState(products: products)
    }

    func restore(from state: BagState) {
        products = state.products
    }

    func removeProduct(withID id: String) {
        products.removeAll { $0.id == id }
    }
}
