import MediatorAbstractions

class ProductSummaryViewModel {
    private(set) var total: Double

    init(total: Double) {
        self.total = total
    }

    func updateTotal(to total: Double) {
        self.total = total
    }
}

class ProductConfigurationViewModel {
    var delegate: TotalUpdateHandler?

    func configurationChanged(withTotal total: Double) {
        delegate?.totalUpdated(to: total)
    }
}
