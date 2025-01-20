import Foundation
import Testing
import VisitorMocks

@testable import VisitorConcretions

struct KataTests {
    @Test func testSalesTaxVisitorForMacBookPro() {
        let macBookPro = Mocks.macBookPro

        let salesTaxVisitor = SalesTaxVisitor()
        let macBookSalesTax = macBookPro.accept(salesTaxVisitor)

        #expect(macBookSalesTax == 1250.00)
    }

    @Test func testSalesTaxVisitorForVisionPro() {
        let visionPro = Mocks.visionPro

        let salesTaxVisitor = SalesTaxVisitor()
        let visionProSalesTax = visionPro.accept(salesTaxVisitor)

        #expect(visionProSalesTax == 1750.00)
    }
}
