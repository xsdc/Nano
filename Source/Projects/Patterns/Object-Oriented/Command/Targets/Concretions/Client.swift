public class CarouselView {
    let viewModel: CarouselViewModel
    private let keyboardInvoker: KeyboardInvoker
    private let tapInvoker: TapInvoker
    private let timerInvoker: TimerInvoker

    public init(viewModel: CarouselViewModel) {
        self.viewModel = viewModel
        self.keyboardInvoker = KeyboardInvoker(receiver: viewModel)
        self.tapInvoker = TapInvoker(receiver: viewModel)
        self.timerInvoker = TimerInvoker(receiver: viewModel)
    }

    // Tap invoker

    public func rightArrowButtonTapped() {
        tapInvoker.rightArrowButtonTapped()
    }

    public func leftArrowButtonTapped() {
        tapInvoker.leftArrowButtonTapped()
    }

    public func buttonTappedForIndex(_ index: Int) {
        tapInvoker.buttonTappedForIndex(index)
    }

    // Keyboard invoker

    public func rightArrowKeyPressed() {
        keyboardInvoker.rightArrowKeyPressed()
    }

    public func leftArrowKeyPressed() {
        keyboardInvoker.leftArrowKeyPressed()
    }

    // Timer invoker

    public func simulateTimerStart() {
        timerInvoker.startTimer(interval: 5.0)
    }
}
