import SwiftUI
import ComposableArchitecture
import ObserverConcretions
import ObserverMocks

struct BagView: View {
    let store: StoreOf<BagFeature>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(store.products) { product in
                    Button {
                        
                        
                    } label: {
                        ProductView(product: product)
                    }
                }
                .onDelete { indexSet in
                    store.send(.removedProducts(indexSet))
                }
            }
            .navigationTitle("Bag")
        }
    }
}

#Preview {
    NavigationStack {
        BagView(
            store: Store(
                initialState: BagFeature.State(
                    products: [Mocks.product1]
                )
            ) {
                BagFeature()
            }
        )
    }
}
