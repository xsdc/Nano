import BridgeAbstractions

public class AppleWatchSummaryView: RenderableProductView {
    private(set) var views: [ComponentView] = []
    private(set) public var product: Product
    private(set) public var componentRenderer: ProductComponentRenderer

    init(product: Product, componentRenderer: ProductComponentRenderer) {
        self.product = product
        self.componentRenderer = componentRenderer
    }

    public func render() {
        views.append(componentRenderer.renderTitleView(for: product))
        views.append(componentRenderer.renderPriceView(for: product))
        views.append(componentRenderer.renderCarouselView(for: product))
    }
}

public class AppleWatchTechSpecsView: RenderableProductView {
    private(set) var views: [ComponentView] = []
    private(set) public var product: Product
    private(set) public var componentRenderer: ProductComponentRenderer

    public init(product: Product, componentRenderer: ProductComponentRenderer) {
        self.product = product
        self.componentRenderer = componentRenderer
    }

    public func render() {
        views.append(componentRenderer.renderTitleView(for: product))
        views.append(componentRenderer.renderPriceView(for: product))
        views.append(componentRenderer.renderTechSpecsView(for: product))
    }
}
