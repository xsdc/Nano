import StateAbstractions

class InitialState: State {
    func connectionDidBecomeReachable(for viewModel: ViewModel) {
        // Update view model
        viewModel.showNoInternetConnectionAlert = false
    }

    func connectionDidBecomeUnreachable(for viewModel: ViewModel) {
        // Update view model
        viewModel.showNoInternetConnectionAlert = true

        // Resume all requests
        for index in viewModel.requests.indices {
            viewModel.requests[index].isSuspended = true
        }
    }
}

class ConnectionUnreachableState: State {
    func connectionDidBecomeReachable(for viewModel: ViewModel) {
        // Update view model
        viewModel.showNoInternetConnectionAlert = false

        // Resume all requests
        for index in viewModel.requests.indices {
            viewModel.requests[index].isSuspended = false
        }
    }

    func connectionDidBecomeUnreachable(for viewModel: ViewModel) {
        // No action needed
    }
}

class ConnectionReachableState: State {
    func connectionDidBecomeReachable(for viewModel: ViewModel) {
        // No action needed
    }

    func connectionDidBecomeUnreachable(for viewModel: ViewModel) {
        // Update view model
        viewModel.showNoInternetConnectionAlert = true

        // Suspend all requests
        for index in viewModel.requests.indices {
            viewModel.requests[index].isSuspended = true
        }
    }
}
