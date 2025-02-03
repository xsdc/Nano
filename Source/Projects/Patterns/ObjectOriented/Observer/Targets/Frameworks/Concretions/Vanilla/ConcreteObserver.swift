import ObserverAbstractions

public class BagIconViewModel: Observer {
    var badgeCount: Int = 0
    private let notifier: ObserverManagingNotifier

    init(notifier: ObserverManagingNotifier) {
        self.notifier = notifier
        self.notifier.attachObserver(self)
    }

    public func notificationReceivedWithObject(_ object: Any) {
        if let products = object as? [Product] {
            self.badgeCount = products.count
        }
    }

    deinit {
        notifier.detachObserver(self)
    }
}

public class BagListViewModel: Observer {
    var products: [Product] = []
    private let notifier: ObserverManagingNotifier

    init(notifier: ObserverManagingNotifier) {
        self.notifier = notifier
        self.notifier.attachObserver(self)
    }

    public func notificationReceivedWithObject(_ object: Any) {
        if let products = object as? [Product] {
            self.products = products
        }
    }

    deinit {
        notifier.detachObserver(self)
    }
}
