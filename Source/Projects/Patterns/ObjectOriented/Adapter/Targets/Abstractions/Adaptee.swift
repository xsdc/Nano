import Foundation

public protocol RecommendationEngineAdapter {
    func fetchProductRecommendations() -> [Product]
}
