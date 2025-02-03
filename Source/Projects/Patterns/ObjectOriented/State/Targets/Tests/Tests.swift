import Foundation
import Testing
import StateAbstractions
import StateMocks

@testable import StateConcretions

struct Tests {
    @Test func testConnectionStatusFlow() {
        let viewModel = ProductViewModel()
        viewModel.requests = [
            Request(id: 1, isSuspended: false),
            Request(id: 2, isSuspended: false)
        ]
        
        #expect(viewModel.showNoInternetConnectionAlert == false)
        #expect(viewModel.requests[0].isSuspended == false)
        #expect(viewModel.requests[1].isSuspended == false)

        viewModel.updateConnection(toReachable: false)
        
        #expect(viewModel.showNoInternetConnectionAlert == true)
        #expect(viewModel.requests[0].isSuspended == true)
        #expect(viewModel.requests[1].isSuspended == true)

        viewModel.updateConnection(toReachable: true)
        
        #expect(viewModel.showNoInternetConnectionAlert == false)
        #expect(viewModel.requests[0].isSuspended == false)
        #expect(viewModel.requests[1].isSuspended == false)

        viewModel.updateConnection(toReachable: false)
        
        #expect(viewModel.showNoInternetConnectionAlert == true)
        #expect(viewModel.requests[0].isSuspended == true)
        #expect(viewModel.requests[1].isSuspended == true)
    }
}
