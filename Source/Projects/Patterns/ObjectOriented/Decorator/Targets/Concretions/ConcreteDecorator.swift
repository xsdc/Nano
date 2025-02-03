import DecoratorAbstractions

class StoragePriceDecorator: PriceDecorator {
    enum StorageOption: Double {
        case gb256 = 100.00
        case gb512 = 300.00
        case tb1 = 500.00
    }

    private let storageOption: StorageOption

    init(product: PriceProviding, storageOption: StorageOption) {
        self.storageOption = storageOption
        super.init(product: product)
    }

    public override var price: Double {
        return super.price + storageOption.rawValue
    }
}

class AppleCarePriceDecorator: PriceDecorator {
    override var price: Double {
        return super.price + 200.00
    }
}
