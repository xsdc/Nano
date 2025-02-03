public protocol CarouselViewable {
    func stopCarousel()
    func startCarousel()
}

public enum BentoBoxType: String {
    case small
    case medium
    case large
}

public protocol BentoBoxViewable {
    var type: BentoBoxType { get }
}
