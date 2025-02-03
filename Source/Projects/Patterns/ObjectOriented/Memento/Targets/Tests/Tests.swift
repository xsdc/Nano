import Foundation
import Testing
import MementoAbstractions
import MementoMocks

@testable import MementoConcretions

struct Tests {
    @Test func testBasicFlow() {
        let products = Mocks.bagProducts
        let bag = Bag(products: products)
        let bagManager = BagManager(bag: bag)
        
        #expect(bag.products.count == 2)
        #expect(bagManager.isAbleToUndo == false)

        bagManager.removeProduct(withID: "A")
        
        #expect(bag.products.count == 1)
        #expect(bagManager.isAbleToUndo == true)

        bagManager.removeProduct(withID: "B")

        #expect(bag.products.count == 0)
        #expect(bagManager.isAbleToUndo == true)

        bagManager.undo()
        
        #expect(bag.products.count == 1)
        #expect(bagManager.isAbleToUndo == true)

        bagManager.undo()
        
        #expect(bag.products.count == 2)
        #expect(bagManager.isAbleToUndo == false)
    }
}
