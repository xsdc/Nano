import FactoryMethodAbstractions

struct InStorePickupMethod: ShippingMethod {
    let title = "In-Store Pickup"

    var deliveryDateEstimation: String {
        return "Same day"
    }

    func shippingCost(forWeight weight: Double) -> Double {
        return 0
    }
}

struct StandardShippingMethod: ShippingMethod {
    let title = "Standard Shipping"

    var deliveryDateEstimation: String {
        return "3-5 business days"
    }

    func shippingCost(forWeight weight: Double) -> Double {
        return 0
    }
}

struct ExpressShippingMethod: ShippingMethod {
    let title = "Express Shipping"
    let baseShippingCost: Double

    var deliveryDateEstimation: String {
        return "1-2 business days"
    }

    func shippingCost(forWeight weight: Double) -> Double {
        return baseShippingCost * weight
    }
}

struct InternationalShippingMethod: ShippingMethod {
    let title = "International Shipping"
    let baseShippingCost: Double

    var deliveryDateEstimation: String {
        return "7-14 business days"
    }

    func shippingCost(forWeight weight: Double) -> Double {
        return baseShippingCost * weight
    }
}
