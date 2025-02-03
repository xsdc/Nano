import StrategyAbstractions

struct Checkout {
    let paymentStrategy: PaymentStrategy

    func processPayment(amount: Double) async -> Result<String, Error> {
        return await paymentStrategy.pay(amount: amount)
    }
}
