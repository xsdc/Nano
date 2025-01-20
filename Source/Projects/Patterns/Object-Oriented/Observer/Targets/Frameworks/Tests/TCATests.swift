import ComposableArchitecture
import ObserverAbstractions
import ObserverMocks
import Testing

@testable import ObserverConcretions

@MainActor
struct TCATests {
    @Test
    func removalOfFirstProductFromBagContainingOneProduct() async {
        let store = TestStore(
            initialState: BagFeature.State(
                products: [
                    Mocks.product1
                ]
            )
        ) {
            BagFeature()
        }

        await store.send(.removedProducts([0])) {
            $0.products = []
        }
    }

    @Test
    func removalOfFirstProductFromBagContainingTwoProducts() async {
        let store = TestStore(
            initialState: BagFeature.State(
                products: [
                    Mocks.product1, Mocks.product2,
                ]
            )
        ) {
            BagFeature()
        }

        await store.send(.removedProducts([0])) {
            $0.products = [
                Mocks.product2
            ]
        }
    }
    
    @Test
    func removalOfSecondProductFromBagContainingThreeProducts() async {
        let store = TestStore(
            initialState: BagFeature.State(
                products: [
                    Mocks.product1, Mocks.product2, Mocks.product3,
                ]
            )
        ) {
            BagFeature()
        }

        await store.send(.removedProducts([1])) {
            $0.products = [
                Mocks.product1, Mocks.product3
            ]
        }
    }
}
