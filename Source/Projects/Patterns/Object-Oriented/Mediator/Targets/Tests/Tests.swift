import Foundation
import Testing
import MediatorMocks

@testable import MediatorConcretions

struct Tests {
    @Test func testInitialPrice() {
        let summaryViewModel = ProductSummaryViewModel(total: 999.99)
            
        #expect(summaryViewModel.total == 999.99)
    }

    @Test func testTestPriceUpdate() {
        let configurationViewModel = ProductConfigurationViewModel()
        let summaryViewModel = ProductSummaryViewModel(total: 999.99)
        _ = ProductView(configurationViewModel: configurationViewModel, summaryViewModel: summaryViewModel)

        configurationViewModel.configurationChanged(withTotal: 1099.99)

        #expect(summaryViewModel.total == 1099.99)
    }
}
