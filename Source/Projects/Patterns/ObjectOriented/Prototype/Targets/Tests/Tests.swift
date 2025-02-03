import Foundation
import Testing
import PrototypeAbstractions
import PrototypeMocks

@testable import PrototypeConcretions

struct Tests {
    @Test func testCloningEuroConfigurationFromDollarConfiguration() {
        let configurationOptions = Mocks.configurationOptions

        let dollarConfiguration = iPhoneProductConfiguration(storageOptions: configurationOptions)
        let euroConfiguration = dollarConfiguration.cloneWithConversionRate(of: 0.9)
        
        #expect(euroConfiguration.storageOptions.count == 3)
        
        #expect(euroConfiguration.storageOptions[0].name == "64GB")
        #expect(euroConfiguration.storageOptions[0].price == 630)
        
        #expect(euroConfiguration.storageOptions[1].name == "128GB")
        #expect(euroConfiguration.storageOptions[1].price == 720)
        
        #expect(euroConfiguration.storageOptions[2].name == "256GB")
        #expect(euroConfiguration.storageOptions[2].price == 810)
    }
}
