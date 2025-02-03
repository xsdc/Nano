import CommandAbstractions

public struct NavigateToNextItemCommand: CommandExecuting {
    let receiver: CarouselViewModel

    public func execute() {
        receiver.navigateToNextItem()
    }
}

public struct NavigateToPreviousItemCommand: CommandExecuting {
    let receiver: CarouselViewModel

    public func execute() {
        receiver.navigateToPreviousItem()
    }
}

public struct NavigateToItemCommand: CommandExecuting {
    let receiver: CarouselViewModel
    let index: Int

    public func execute() {
        receiver.navigateToItem(at: index)
    }
}
