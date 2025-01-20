import Foundation

public protocol CloneableProductConfiguration {
    func cloneWithConversionRate(of conversionRate: Double) -> Self
}
