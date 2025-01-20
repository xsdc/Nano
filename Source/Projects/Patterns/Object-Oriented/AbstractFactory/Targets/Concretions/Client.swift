import AbstractFactoryAbstractions

class ProductView {
    let bentoBoxView: BentoBoxViewable
    let carouselView: CarouselViewable

    init(factory: AbstractComponentFactory) {
        self.carouselView = factory.makeCarouselView()
        self.bentoBoxView = factory.makeBentoBoxView()
    }
}
