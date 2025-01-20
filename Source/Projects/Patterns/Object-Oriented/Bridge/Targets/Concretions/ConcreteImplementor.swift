import BridgeAbstractions

public struct iPhoneProductComponentRenderer: ProductComponentRenderer {
    public func renderTitleView(for product: Product) -> ComponentView {
        return TitleView(name: "Title view for iPhone")
    }

    public func renderPriceView(for product: Product) -> ComponentView {
        return PriceView(name: "Price view for iPhone")
    }

    public func renderCarouselView(for product: Product) -> ComponentView {
        return CarouselView(name: "Carousel view for iPhone")
    }

    public func renderTechSpecsView(for product: Product) -> ComponentView {
        return TechSpecsView(name: "Tech specs view for iPhone")
    }
}

public struct iPadProductComponentRenderer: ProductComponentRenderer {
    public func renderTitleView(for product: Product) -> ComponentView {
        return TitleView(name: "Title view for iPad")
    }

    public func renderPriceView(for product: Product) -> ComponentView {
        return PriceView(name: "Price view for iPad")
    }

    public func renderCarouselView(for product: Product) -> ComponentView {
        return CarouselView(name: "Carousel view for iPad")
    }

    public func renderTechSpecsView(for product: Product) -> ComponentView {
        return TechSpecsView(name: "Tech specs view for iPad")
    }
}
