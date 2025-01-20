import SwiftUI
import ComposableArchitecture
import ObserverAbstractions

// sourcery: audit
@Reducer
public struct CatalogFeature {
    
    public init() {}
    
    @ObservableState
    public struct State: Equatable {        
        public var products: IdentifiedArrayOf<Product> = []
        
        public init(products: IdentifiedArrayOf<Product> = []) {
            self.products = products
        }
    }
    
    @CasePathable
    public enum Action: Equatable {
        case addedProduct(_ product: Product)
        case removedProducts(IndexSet)
        case productTapped(id: Product.ID)
        
        public enum Delegate: Equatable {
            case switchToBagTab
        }
        case goToCatalogTapped
        case delegate(Delegate)
    }
    
    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case let .addedProduct(product):
                state.products.append(product)
                return .none
            case let .removedProducts(indexSet):
                state.products.remove(atOffsets: indexSet)
                return .none
            case .productTapped:
                return .none
            case .delegate:
                return .none
            case .goToCatalogTapped:
                return .send(.delegate(.switchToBagTab))
            }
        }
    }
}
