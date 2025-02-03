import Foundation
import AdapterAbstractions

public class MachineLearningRecommendationEngineAdapter: RecommendationEngineAdapter {
    private let machineLearningServiceProducts: [MachineLearningServiceProduct]
    
    public init(products: [MachineLearningServiceProduct]) {
        self.machineLearningServiceProducts = products
    }

    public func fetchProductRecommendations() -> [Product] {
        return machineLearningServiceProducts.map { machineLearningProduct in
            Product(id: machineLearningProduct.machineLearningId, name: machineLearningProduct.machineLearningName)
        }
    }
}

public class HistoryRecommendationEngineAdapter: RecommendationEngineAdapter {
    private let historyServiceProducts: [HistoryServiceProduct]
    
    public init(products: [HistoryServiceProduct]) {
        self.historyServiceProducts = products
    }

    public func fetchProductRecommendations() -> [Product] {
        return historyServiceProducts.map { historyServiceProduct in
            Product(id: historyServiceProduct.historyId, name: historyServiceProduct.historyName)
        }
    }
}
