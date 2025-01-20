public protocol RenderableProductView {
    var product: Product { get }
    var componentRenderer: ProductComponentRenderer { get }

    func render()
}
