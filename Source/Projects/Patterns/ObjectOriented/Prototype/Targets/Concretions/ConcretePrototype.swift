import PrototypeAbstractions

public struct iPhoneProductConfiguration: CloneableProductConfiguration {
    public let storageOptions: [ConfigurationOption]

    public func cloneWithConversionRate(of conversionRate: Double) -> iPhoneProductConfiguration {
        let storageOptions = self.storageOptions.map { option in
            ConfigurationOption(name: option.name, price: option.price * conversionRate)
        }

        return iPhoneProductConfiguration(storageOptions: storageOptions)
    }
}
