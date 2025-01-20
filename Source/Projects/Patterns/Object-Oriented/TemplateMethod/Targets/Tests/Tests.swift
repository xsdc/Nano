import Foundation
import TemplateMethodMocks
import Testing

@testable import TemplateMethodConcretions

struct Tests {
    @Test func testSeries10AppleWatchProcess() {
        let configuration = MockSeries10AppleWatchConfiguration()
        configuration.process()

        #expect(configuration.operationOrder.count == 5)
        #expect(configuration.operationOrder[0] == "mapDataForWatchCaseSize")
        #expect(configuration.operationOrder[1] == "mapDataForWatchCaseMaterial")
        #expect(configuration.operationOrder[2] == "mapDataForWatchBand")
        #expect(configuration.operationOrder[3] == "mapDataForWatchBandSize")
        #expect(configuration.operationOrder[4] == "mapDataForWatchEngraving")
    }

    @Test func testHermèsSeries10AppleWatchProcess() {
        let configuration = MockHermèsSeries10AppleWatchConfiguration()
        configuration.process()

        #expect(configuration.operationOrder.count == 5)
        #expect(configuration.operationOrder[0] == "mapDataForWatchCaseSize")
        #expect(configuration.operationOrder[1] == "mapDataForWatchCaseMaterial")
        #expect(configuration.operationOrder[2] == "mapDataForWatchBand")
        #expect(configuration.operationOrder[3] == "mapDataForWatchBandSize")
        #expect(configuration.operationOrder[4] == "mapDataForWatchEngraving")
    }
}
