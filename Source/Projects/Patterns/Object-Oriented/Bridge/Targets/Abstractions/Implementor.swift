public protocol ProductComponentRenderer {
    func renderTitleView(for product: Product) -> ComponentView
    func renderPriceView(for product: Product) -> ComponentView
    func renderCarouselView(for product: Product) -> ComponentView
    func renderTechSpecsView(for product: Product) -> ComponentView
}
