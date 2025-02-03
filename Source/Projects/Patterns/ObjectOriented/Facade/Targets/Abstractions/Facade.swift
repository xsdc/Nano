import FacadeConcretions

public struct NotificationFacade {
    private let mailNotificationAPI = MailNotificationAPI()
    private let messageNotificationAPI = MessageNotificationAPI()
    private let settings: Settings
    
    public init(settings: Settings) {
        self.settings = settings
    }

    public func send(text: String) {
        switch settings.notificationType {
        case .mail:
            mailNotificationAPI.send(text: text)
        case .message:
            messageNotificationAPI.send(text: text)
        }
    }
}
