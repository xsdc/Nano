import Testing
import ObserverMocks
@testable import ObserverConcretions

struct Tests {
    @Test func testBagNotifierWithOneProduct() {
        let notifier = WebSocketBagNotifier()
        let bagListViewModel = BagListViewModel(notifier: notifier)
        let bagIconViewModel = BagIconViewModel(notifier: notifier)

        // Default values

        print(bagListViewModel.products)
        print(bagIconViewModel.badgeCount)
        
        #expect(bagListViewModel.products.isEmpty)
        #expect(bagIconViewModel.badgeCount == 0)

        Mocks.oneProduct.forEach { notifier.addProduct($0) }
        notifier.notifyObservers()

        // Values after product added to the bag
        
        #expect(bagListViewModel.products.count == 1)
        #expect(bagIconViewModel.badgeCount == 1)
    }
    
    @Test func testBagNotifierWithTwoProducts() {
        let notifier = WebSocketBagNotifier()
        let bagListViewModel = BagListViewModel(notifier: notifier)
        let bagIconViewModel = BagIconViewModel(notifier: notifier)

        // Default values

        print(bagListViewModel.products)
        print(bagIconViewModel.badgeCount)
        
        #expect(bagListViewModel.products.isEmpty)
        #expect(bagIconViewModel.badgeCount == 0)

        Mocks.twoProducts.forEach { notifier.addProduct($0) }
        notifier.notifyObservers()

        // Values after product added to the bag
        
        #expect(bagListViewModel.products.count == 2)
        #expect(bagIconViewModel.badgeCount == 2)
    }
}
