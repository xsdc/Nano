import Foundation
import AdapterAbstractions

class RecommendationEngine {
    private let adapter: RecommendationEngineAdapter

    init(adapter: RecommendationEngineAdapter) {
        self.adapter = adapter
    }

    func fetchProductRecommendations() -> [Product] {
        return adapter.fetchProductRecommendations()
    }
}
