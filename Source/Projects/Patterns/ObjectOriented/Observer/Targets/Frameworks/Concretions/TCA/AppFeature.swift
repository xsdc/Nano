import SwiftUI
import ComposableArchitecture
import ObserverAbstractions

// sourcery: audit
@Reducer
public struct AppFeature {
    
    public init() {}

    public enum Tab: Equatable {
        case bag, catalog
    }

    @ObservableState
    public struct State {
        public var catalogTab: CatalogFeature.State
        public var bagTab = BagFeature.State()
        public var selectedTab: Tab = .catalog
        
        public init(products: IdentifiedArrayOf<Product> = []) {
            self.catalogTab = CatalogFeature.State(products: products)
        }
    }

    @CasePathable
    public enum Action {
        case catalogTab(CatalogFeature.Action)
        case bagTab(BagFeature.Action)
        case selectedTabChanged(Tab)
    }

    public var body: some ReducerOf<Self> {
        Reduce<State, Action> { state, action in
            switch action {
            case let .catalogTab(.delegate(action)):
                switch action {
                case .switchToBagTab:
                    state.selectedTab = .bag
                    return .none
                }

            case let .selectedTabChanged(tab):
                state.selectedTab = tab
                return .none

            case .catalogTab, .bagTab:
                return .none
            }
        }

        Scope(state: \.catalogTab, action: \.catalogTab) {
            CatalogFeature()
        }

        Scope(state: \.bagTab, action: \.bagTab) {
            BagFeature()
        }
    }
}
