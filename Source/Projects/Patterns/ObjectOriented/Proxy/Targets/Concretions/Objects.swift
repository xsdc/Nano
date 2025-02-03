import ProxyAbstractions

public class AnalyticsEventLogger: AnalyticsEventLogging {
    public init() {}
    
    public func log(event: String) {
        print("Analytics event logged: \(event)")
    }
}
