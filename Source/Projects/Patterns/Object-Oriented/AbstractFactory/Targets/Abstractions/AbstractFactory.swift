public protocol AbstractComponentFactory {
    func makeCarouselView() -> CarouselViewable
    func makeBentoBoxView() -> BentoBoxViewable
}
