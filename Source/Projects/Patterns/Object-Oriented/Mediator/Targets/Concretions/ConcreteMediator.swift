import MediatorAbstractions

class ProductView: TotalUpdateHandler {
    private let configurationViewModel: ProductConfigurationViewModel
    private let summaryViewModel: ProductSummaryViewModel

    init(configurationViewModel: ProductConfigurationViewModel, summaryViewModel: ProductSummaryViewModel) {
        self.configurationViewModel = configurationViewModel
        self.summaryViewModel = summaryViewModel
        self.configurationViewModel.delegate = self
    }

    func totalUpdated(to total: Double) {
        summaryViewModel.updateTotal(to: total)
    }
}
