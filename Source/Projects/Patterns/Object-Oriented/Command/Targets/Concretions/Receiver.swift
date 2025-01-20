public class CarouselViewModel {
    private(set) var imagePaths: [String]
    private(set) public var currentIndex: Int = 0

    public init(imagePaths: [String]) {
        self.imagePaths = imagePaths
    }

    public func navigateToNextItem() {
        currentIndex = (currentIndex + 1) % imagePaths.count
    }

    public func navigateToPreviousItem() {
        currentIndex = ((currentIndex - 1) + imagePaths.count) % imagePaths.count
    }

    public func navigateToItem(at index: Int) {
        guard index >= 0 && index < imagePaths.count else { return }
        currentIndex = index
    }
}
