import ObserverAbstractions

public class WebSocketBagNotifier: ObserverManagingNotifier {
    private var observers: [Observer] = []
    private var products: [Product] = []

    func addProduct(_ product: Product) {
        self.products.append(product)
    }

    public func attachObserver(_ observer: Observer) {
        observers.append(observer)
    }

    public func detachObserver(_ observer: Observer) {
        // Remove observer from the list
    }

    public func notifyObservers() {
        observers.forEach { $0.notificationReceivedWithObject(self.products) }
    }
}
