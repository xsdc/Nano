import Foundation
import Testing
import FactoryMethodMocks

@testable import FactoryMethodConcretions

struct Tests {
    @Test func testInStorePickupShippingMethodFactory() {
        let inStorePickupShippingMethod = ShippingMethodFactory.makeShippingMethod(.inStorePickup)

        #expect(inStorePickupShippingMethod.title == "In-Store Pickup")
        #expect(inStorePickupShippingMethod.deliveryDateEstimation == "Same day")
        #expect(inStorePickupShippingMethod.shippingCost(forWeight: 5) == 0.0)
    }
    
    @Test func testStandardShippingMethodFactory() {
        let standardShippingMethod = ShippingMethodFactory.makeShippingMethod(.standard)
        
        #expect(standardShippingMethod.title == "Standard Shipping")
        #expect(standardShippingMethod.deliveryDateEstimation == "3-5 business days")
        #expect(standardShippingMethod.shippingCost(forWeight: 5) == 0.0)
    }
    
    @Test func testExpressShippingMethodFactory() {
        let expressShippingMethod = ShippingMethodFactory.makeShippingMethod(.express)
        
        #expect(expressShippingMethod.title == "Express Shipping")
        #expect(expressShippingMethod.deliveryDateEstimation == "1-2 business days")
        #expect(expressShippingMethod.shippingCost(forWeight: 5) == 25.0)
    }
    
    @Test func testInternationalShippingMethodFactory() {
        let internationalShippingMethod = ShippingMethodFactory.makeShippingMethod(.international)
        
        #expect(internationalShippingMethod.title == "International Shipping")
        #expect(internationalShippingMethod.deliveryDateEstimation == "7-14 business days")
        #expect(internationalShippingMethod.shippingCost(forWeight: 10) == 50.0)
    }
}
