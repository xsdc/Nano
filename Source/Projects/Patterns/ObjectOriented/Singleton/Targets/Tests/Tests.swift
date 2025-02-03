import Foundation
import Testing
import SingletonMocks

@testable import SingletonConcretions

struct Tests {
    @Test func testSharedAdminUser() {
        let adminUser = Admin()
        
        #expect(adminUser.shared.name == "Tim")
        #expect(adminUser.shared.email == "tim@apple.com")
        #expect(adminUser.greeting == "Hello, Tim!")
    }

    @Test func testSharedEmployeeUser() {
        let employeeUser = Employee()
        
        #expect(employeeUser.shared.name == "Scott")
        #expect(employeeUser.shared.email == "scott@apple.com")
        #expect(employeeUser.greeting == "Hello, Scott!")
    }
}
