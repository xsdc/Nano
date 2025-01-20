
public struct MachineLearningServiceProduct {
    public let machineLearningId: String
    public let machineLearningName: String
    
    public init(machineLearningId: String, machineLearningName: String) {
        self.machineLearningId = machineLearningId
        self.machineLearningName = machineLearningName
    }
}

public struct HistoryServiceProduct {
    public let historyId: String
    public let historyName: String
    
    public init(historyId: String, historyName: String) {
        self.historyId = historyId
        self.historyName = historyName
    }
}
