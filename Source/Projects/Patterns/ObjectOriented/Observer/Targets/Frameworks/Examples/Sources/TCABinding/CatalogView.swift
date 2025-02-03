import SwiftUI
import ComposableArchitecture
import ObserverConcretions
import ObserverMocks

struct CatalogView: View {
    let store: StoreOf<CatalogFeature>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(store.products) { product in
                    Button {
                        
                        
                    } label: {
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.headline)
                            Spacer()
                            HStack {
                                Label("\(product.price)", systemImage: "dollarsign.circle.fill")
                            }
                            .font(.caption)
                        }
                        .padding()
                        .foregroundColor(.blue)
                    }
                }
                .onDelete { indexSet in
                    store.send(.removedProducts(indexSet))
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        store.send(.delegate(.switchToBagTab))
                    } label: {
                        Image(systemName: "bag")
                    }
                }
            }
            .navigationTitle("Catalog")
        }
    }
}

#Preview {
    NavigationStack {
        CatalogView(
            store: Store(
                initialState: CatalogFeature.State(
                    products: [Mocks.product1]
                )
            ) {
                CatalogFeature()
            }
        )
    }
}
