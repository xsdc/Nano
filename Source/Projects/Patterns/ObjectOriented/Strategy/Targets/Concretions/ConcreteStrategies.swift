import StrategyAbstractions

struct ApplePayPaymentStrategy: PaymentStrategy {
    let appleId: String

    func pay(amount: Double) async -> Result<String, Error> {
        
        return .success("Payment processed with Apple Pay for \(amount)")
    }
}

struct CreditCardPaymentStrategy: PaymentStrategy {
    let creditCardNumber: String

    func pay(amount: Double) async -> Result<String, Error> {
        return .success("Payment processed with credit card for \(amount)")
    }
}
