import Foundation
import Testing
import ChainOfResponsibilityMocks

@testable import ChainOfResponsibilityConcretions

struct Tests {
    @Test func testChain_StockCheck_AddToBag_Logging() async {
        let loggingHandler = LoggingHandler(next: nil)
        let addToBagHandler = AddToBagHandler(next: loggingHandler)
        let stockCheckHandler = StockCheckHandler(next: addToBagHandler)

        let request = Mocks.request()
        stockCheckHandler.handle(request: request) { result in
            #expect(request.log.count == 3)
            #expect(request.log[0] == "Product 1234 is in stock")
            #expect(request.log[1] == "Product 1234 added to bag")
            #expect(request.log[2] == "Logging analytics event for product 1234")
            #expect(result == "Request completed")
        }
    }
    
    @Test func testChain_AddToBag_Logging() async {
        let loggingHandler = LoggingHandler(next: nil)
        let addToBagHandler = AddToBagHandler(next: loggingHandler)

        let request = Mocks.request()
        addToBagHandler.handle(request: request) { result in
            #expect(request.log.count == 2)
            #expect(request.log[0] == "Product 1234 added to bag")
            #expect(request.log[1] == "Logging analytics event for product 1234")
            #expect(result == "Request completed")
        }
    }
}
