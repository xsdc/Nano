
public protocol ObserverManaging {
    func attachObserver(_ observer: Observer)
    func detachObserver(_ observer: Observer)
}

public protocol ObserverNotifier {
    func notifyObservers()
}

public typealias ObserverManagingNotifier = ObserverManaging & ObserverNotifier
