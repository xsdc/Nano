import Foundation
import Testing
import AdapterMocks

@testable import AdapterConcretions

struct Tests {
    @Test func testMachineLearningRecommendationEngineAdapter() {
        let adapter = MachineLearningRecommendationEngineAdapter(products: Mocks.machineLearningServiceProducts)
        let recommendationEngine = RecommendationEngine(adapter: adapter)
        let products = recommendationEngine.fetchProductRecommendations()

        #expect(products.count == 2)
    }

    @Test func testHistoryRecommendationEngineAdapter() {
        let adapter = HistoryRecommendationEngineAdapter(products: Mocks.historyServiceProducts)
        let recommendationEngine = RecommendationEngine(adapter: adapter)
        let products = recommendationEngine.fetchProductRecommendations()

        #expect(products.count == 3)
    }
}
