import Foundation

public struct Settings {
    public enum NotificationType {
        case mail
        case message
    }

    public var notificationType: NotificationType
    
    public init(notificationType: NotificationType) {
        self.notificationType = notificationType
    }
}

public struct MailNotificationAPI {
    public init() {}
    
    public func send(text: String) {
        print("Mail sent with text: \(text)")
    }
}

public struct MessageNotificationAPI {
    public init() {}
    
    public func send(text: String) {
        print("Message sent with text: \(text)")
    }
}
