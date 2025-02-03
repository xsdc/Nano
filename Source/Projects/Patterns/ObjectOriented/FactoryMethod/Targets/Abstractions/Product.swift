import Foundation

public protocol ShippingMethod {
    var title: String { get }
    var deliveryDateEstimation: String { get }
    func shippingCost(forWeight: Double) -> Double
}
