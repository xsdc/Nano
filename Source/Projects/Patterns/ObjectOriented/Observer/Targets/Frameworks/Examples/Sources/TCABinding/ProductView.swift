import SwiftUI
import ComposableArchitecture
import ObserverAbstractions

struct ProductView: View {
    let product: Product

    var body: some View {
        HStack {
            Text(product.name)
        }
    }
}
