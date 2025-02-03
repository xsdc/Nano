import FactoryMethodAbstractions

public class ShippingMethodFactory {
    enum ShippingMethodType {
        case express, international, standard, inStorePickup
    }

    static func makeShippingMethod(_ method: ShippingMethodType) -> ShippingMethod {
        switch method {
        case .standard:
            return StandardShippingMethod()
        case .inStorePickup:
            return InStorePickupMethod()
        case .express:
            return ExpressShippingMethod(baseShippingCost: 5)
        case .international:
            return InternationalShippingMethod(baseShippingCost: 5)
        }
    }
}
