import Foundation

public struct TapInvoker {
    let receiver: CarouselViewModel

    func rightArrowButtonTapped() {
        let navigateToNextCommand = NavigateToNextItemCommand(receiver: receiver)
        navigateToNextCommand.execute()
    }

    func leftArrowButtonTapped() {
        let navigateToPreviousCommand = NavigateToPreviousItemCommand(receiver: receiver)
        navigateToPreviousCommand.execute()
    }

    func buttonTappedForIndex(_ index: Int) {
        let navigateToItemCommand = NavigateToItemCommand(receiver: receiver, index: index)
        navigateToItemCommand.execute()
    }
}

public struct KeyboardInvoker {
    let receiver: CarouselViewModel

    func rightArrowKeyPressed() {
        let navigateToNextCommand = NavigateToNextItemCommand(receiver: receiver)
        navigateToNextCommand.execute()
    }

    func leftArrowKeyPressed() {
        let navigateToPreviousCommand = NavigateToPreviousItemCommand(receiver: receiver)
        navigateToPreviousCommand.execute()
    }
}

public struct TimerInvoker {
    let receiver: CarouselViewModel
    private let dispatchTimer = DispatchSource.makeTimerSource(queue: DispatchQueue.main)

    func startTimer(interval: TimeInterval) {
        let navigateToNextCommand = NavigateToNextItemCommand(receiver: receiver)

        dispatchTimer.schedule(deadline: .now() + interval, repeating: interval)
        dispatchTimer.setEventHandler {
            navigateToNextCommand.execute()
        }
        dispatchTimer.resume()
    }
}
