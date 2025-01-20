import SwiftUI
import ComposableArchitecture
import ObserverAbstractions
import ObserverConcretions

public struct TCAContentView: View {
    public let store: StoreOf<AppFeature>
    
    public init(store: StoreOf<AppFeature>) {
        self.store = store
    }
    
    public var body: some View {
        WithViewStore(self.store, observe: \.selectedTab) { viewStore in
            TabView(selection: viewStore.binding(send: { .selectedTabChanged($0) })) {
                CatalogView(
                    store: self.store.scope(
                        state: \.catalogTab,
                        action: \.catalogTab
                    )
                )
                .tabItem { Label("Catalog", systemImage: "macbook.and.iphone") }
                .tag(AppFeature.Tab.catalog)
                
                BagView(
                    store: self.store.scope(
                        state: \.bagTab,
                        action: \.bagTab
                    )
                )
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .badge(store.bagTab.products.count)
                .tag(AppFeature.Tab.bag)
            }
        }
    }
}

#Preview {
    TCAContentView(
        store: Store(
            initialState: AppFeature.State()
        ) {
            AppFeature()
        }
    )
}
