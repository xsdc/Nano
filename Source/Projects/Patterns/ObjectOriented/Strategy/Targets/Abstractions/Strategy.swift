
public protocol PaymentStrategy {
    func pay(amount: Double) async -> Result<String, Error>
}
