import StateAbstractions

class ProductViewModel: ViewModel {
    var showNoInternetConnectionAlert = false
    var requests: [Request] = []
    private var state: State = InitialState()

    func updateConnection(toReachable isReachable: Bool) {
        if isReachable {
            state.connectionDidBecomeReachable(for: self)
            state = ConnectionReachableState()
        }
        else {
            state.connectionDidBecomeUnreachable(for: self)
            state = ConnectionUnreachableState()
        }
    }
}
