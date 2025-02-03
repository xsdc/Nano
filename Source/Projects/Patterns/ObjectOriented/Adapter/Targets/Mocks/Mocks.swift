import Foundation
import AdapterConcretions

public struct Mocks {
    public static let machineLearningServiceProducts = [
        MachineLearningServiceProduct(machineLearningId: "1234", machineLearningName: "Apple Watch Ultra"),
        MachineLearningServiceProduct(machineLearningId: "4321", machineLearningName: "Vision Pro")
    ]
    
    public static let historyServiceProducts = [
        HistoryServiceProduct(historyId: "1234", historyName: "Apple Watch Ultra"),
        HistoryServiceProduct(historyId: "4321", historyName: "Vision Pro"),
        HistoryServiceProduct(historyId: "2314", historyName: "iPhone Pro")
    ]
}
