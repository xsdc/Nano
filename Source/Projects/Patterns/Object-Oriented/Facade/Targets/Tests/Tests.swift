import Foundation
import Testing
import FacadeConcretions
import FacadeMocks

@testable import FacadeAbstractions

struct Tests {
    @Test func testNotificationSentViaMail() {
        let settings = Settings(notificationType: .mail)
        let notification = NotificationFacade(settings: settings)
        notification.send(text: "Hello, World!")
    }

    @Test func testNotificationSentViaMessage() {
        let settings = Settings(notificationType: .message)
        let notification = NotificationFacade(settings: settings)
        notification.send(text: "Hello, World!")
    }
}
