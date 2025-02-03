import Foundation
import Testing
import DecoratorMocks

@testable import DecoratorConcretions

struct Tests {
    @Test func testMacBookProWithStorageAndAppleCareDecorators() {
        let macBookPro = MacBookProProduct()
        let macBookProWithStorage = StoragePriceDecorator(product: macBookPro, storageOption: .tb1)
        let macBookProWithStorageAndAppleCare = AppleCarePriceDecorator(product: macBookProWithStorage)
        
        #expect(macBookPro.price == 5000.0)
        #expect(macBookProWithStorage.price == 5500.0)
        #expect(macBookProWithStorageAndAppleCare.price == 5700.0)
    }
    
    @Test func testVisionProWithStorageAndAppleCareDecorators() {
        let visionPro = VisionProProduct()
        let visionProWithStorage = StoragePriceDecorator(product: visionPro, storageOption: .gb512)
        let visionProWithStorageAndAppleCare = AppleCarePriceDecorator(product: visionProWithStorage)
        
        #expect(visionPro.price == 3500.0)
        #expect(visionProWithStorage.price == 3800.0)
        #expect(visionProWithStorageAndAppleCare.price == 4000.0)
    }
}
