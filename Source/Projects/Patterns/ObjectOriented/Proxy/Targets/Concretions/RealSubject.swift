import ProxyAbstractions

struct Bag: ProductManaging {
    func addProduct(_ product: Product) {
        print("Product added to bag")
    }

    func removeProduct(_ product: Product) {
        print("Product removed from bag")
    }

    func clearAllProducts() {
        print("Bag has been cleared")
    }
}
