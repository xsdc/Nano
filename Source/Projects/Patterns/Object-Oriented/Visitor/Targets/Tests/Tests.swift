import Foundation
import Testing
import VisitorMocks

@testable import VisitorConcretions

struct Tests {
    @Test func testEducationDiscountVisitor() {
        let macBookPro = Mocks.macBookPro
        let visionPro = Mocks.visionPro

        let educationDiscountVisitor = EducationDiscountVisitor()
        let macBookDiscount = macBookPro.accept(educationDiscountVisitor)
        let visionProDiscount = visionPro.accept(educationDiscountVisitor)

        #expect(macBookDiscount == 625.00)
        #expect(visionProDiscount == 875.00)
    }

    @Test func testEmployeeDiscountVisitor() {
        let macBookPro = Mocks.macBookPro
        let visionPro = Mocks.visionPro

        let employeeDiscountVisitor = EmployeeDiscountVisitor()
        let macBookDiscount = macBookPro.accept(employeeDiscountVisitor)
        let visionProDiscount = visionPro.accept(employeeDiscountVisitor)

        #expect(macBookDiscount == 1250.00)
        #expect(visionProDiscount == 1750.00)
    }

    @Test func testDescriptionVisitor() {
        let macBookPro = Mocks.macBookPro
        let visionPro = Mocks.visionPro

        let descriptionVisitor = DescriptionVisitor()
        let macBookDescription = macBookPro.accept(descriptionVisitor)
        let visionProDescription = visionPro.accept(descriptionVisitor)

        #expect(macBookDescription == "Product with ID MBP2023 costs $2500.0")
        #expect(visionProDescription == "Product with ID VP2023 costs $3500.0")
    }
}
