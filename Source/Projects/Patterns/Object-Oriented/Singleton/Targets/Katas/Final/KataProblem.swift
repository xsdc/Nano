import VisitorAbstractions

// Visitor pattern

// Add another vistor called SalesTaxVisitor that calculates the sales tax for a product. The sales tax rate is 7.5%.
// Complete the test


class SalesTaxVisitor: Visitor {
    typealias VisitorResult = Double
    
    private let salesTaxRate = 0.075
    
    func visit(_ product: Product) -> Double {
        product.price * salesTaxRate
    }
}
