import CompositeAbstractions

public class Product: BreadcrumbProviding {
    let name: String
    let price: Double
    private var parent: Category?

    public init(name: String, price: Double) {
        self.name = name
        self.price = price
    }

    public var breadcrumbs: [String] {
        if let parent = parent {
            return parent.breadcrumbs + [name]
        }
        else {
            return [name]
        }
    }

    func setParent(_ parent: Category) {
        self.parent = parent
    }
}
