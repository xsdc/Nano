import TemplateMethodConcretions

public class MockHermèsSeries10AppleWatchConfiguration: HermèsSeries10AppleWatchConfiguration {
    public var operationOrder: [String] = []
    
    public override func mapDataForWatchCaseSize() {
        operationOrder.append("mapDataForWatchCaseSize")
    }

    public override func mapDataForWatchCaseMaterial() {
        operationOrder.append("mapDataForWatchCaseMaterial")
    }

    public override func mapDataForWatchBand() {
        operationOrder.append("mapDataForWatchBand")
    }

    public override func mapDataForWatchBandSize() {
        operationOrder.append("mapDataForWatchBandSize")
    }

    public override func mapDataForWatchEngraving() {
        operationOrder.append("mapDataForWatchEngraving")
    }
}
