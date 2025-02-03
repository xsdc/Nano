import Testing
import BridgeMocks

@testable import BridgeConcretions

struct Tests {
    @Test func testAppleWatchSummaryViewWithPhoneRenderer() {
        let product = Mocks.product

        let iPhoneRenderer = iPhoneProductComponentRenderer()
        let summaryView = AppleWatchSummaryView(product: product, componentRenderer: iPhoneRenderer)
        summaryView.render()

        #expect(summaryView.views.count == 3)
        #expect(summaryView.views.contains { $0 is TitleView })
        #expect(summaryView.views.contains { $0 is PriceView })
        #expect(summaryView.views.contains { $0 is CarouselView })
    }

    @Test func testAppleWatchTechSpecsViewWithPadRenderer() {
        let product = Mocks.product

        let iPadRenderer = iPadProductComponentRenderer()
        let techSpecsView = AppleWatchTechSpecsView(product: product, componentRenderer: iPadRenderer)
        techSpecsView.render()

        #expect(techSpecsView.views.count == 3)
        #expect(techSpecsView.views.contains { $0 is TitleView })
        #expect(techSpecsView.views.contains { $0 is PriceView })
        #expect(techSpecsView.views.contains { $0 is TechSpecsView })
    }
}
