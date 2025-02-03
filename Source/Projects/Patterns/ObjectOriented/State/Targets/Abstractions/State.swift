
public protocol State {
    func connectionDidBecomeReachable(for viewModel: ViewModel)
    func connectionDidBecomeUnreachable(for viewModel: ViewModel)
}
