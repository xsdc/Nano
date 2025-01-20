import ProxyAbstractions

public class MockAnalyticsEventLogger: AnalyticsEventLogging {
    public var eventsLogged: [String] = []
    
    public init() {}
    
    public func log(event: String) {
        eventsLogged.append(event)
    }
}
