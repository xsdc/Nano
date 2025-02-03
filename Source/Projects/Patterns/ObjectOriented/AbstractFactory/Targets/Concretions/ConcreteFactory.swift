import AbstractFactoryAbstractions

class iPhoneComponentFactory: AbstractComponentFactory {
    func makeCarouselView() -> CarouselViewable {
        return iPhoneCarouselView()
    }

    func makeBentoBoxView() -> BentoBoxViewable {
        return iPhoneBentoBoxView(type: .small)
    }
}

class iPadComponentFactory: AbstractComponentFactory {
    func makeCarouselView() -> CarouselViewable {
        return iPadCarouselView()
    }

    func makeBentoBoxView() -> BentoBoxViewable {
        return iPadBentoBoxView(type: .large)
    }
}
