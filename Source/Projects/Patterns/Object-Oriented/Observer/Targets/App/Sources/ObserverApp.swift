import SwiftUI
import ComposableArchitecture
import ObserverConcretions
import ObserverExamples
import ObserverMocks

@main
struct ObserverApp: App {
    var body: some Scene {
        WindowGroup {
            TCAContentView(
                store: Store(
                    initialState: AppFeature.State(
                        products: IdentifiedArray(uniqueElements: Mocks.threeProducts)
                    )
                ) {
                    AppFeature()
                }
            )
        }
    }
}
