import VisitorAbstractions

public class EducationDiscountVisitor: Visitor {
    public typealias VisitorResult = Double
    private let discountPercentage = 0.25

    public func visit(_ product: Product) -> Double {
        product.price * discountPercentage
    }
}

public class EmployeeDiscountVisitor: Visitor {
    public typealias VistorResult = Double
    private let discountPercentage = 0.5

    public func visit(_ product: Product) -> Double {
        product.price * discountPercentage
    }
}

public class DescriptionVisitor: Visitor {
    public typealias VisitorResult = String

    public func visit(_ product: Product) -> String {
        "Product with ID \(product.id) costs $\(product.price)"
    }
}
